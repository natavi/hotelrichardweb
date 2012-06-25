using System;
using System.Collections;
using System.Data;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Xml.Serialization;

namespace ServerControl1
{
    [DefaultProperty("Text")]
    [ToolboxData("<{0}:ServerControl1 runat=server></{0}:ServerControl1>")]
    public class ServerControl1 : DropDownList

    {
        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Localizable(true)]
        string currentValue;

        public string Text
        {
            get
            {
                String s = (String)ViewState["Text"];
                return ((s == null) ? "[" + this.ID + "]" : s);
            }

            set
            {
                ViewState["Text"] = value;
            }
        }

        
/*
        protected override void OnDataBinding(EventArgs e)
        {
            IEnumerable data = base.Items;
            currentValue = base.SelectedValue;

            IEnumerator enumer = data.GetEnumerator();
            
            {
                DataTable source = new DataTable();
                while (enumer.MoveNext())
                {
                    source.Rows.Add(enumer.Current);
                }
                
                base.Items.Clear();
                
                ICollection is2 = data as ICollection;
                if (is2 != null)
                {
                    this.Items.Capacity = is2.Count;
                }

                foreach (DataRow dr in source.Rows)
                {
                    string value = dr[0].ToString();
                    string imgPath = dr[1].ToString();
                    string text = dr[2].ToString();

                    ListItem it = new ListItem();
                    it.Enabled = true;
                    it.Text = text;
                    it.Value = value;
                    it.Selected = (value.Equals(currentValue));

                    base.Items.Add(it);
                }
            }
            SelectedValue = currentValue;
            this.ViewState["_!DataBound"] = true;
            this.RequiresDataBinding = false;
        }
        */
        /// Generates options tags
        /// 
        protected override void RenderChildren(HtmlTextWriter writer)
        {
            if (DataSource != null)
            {
                if (DataSource.GetType() == typeof(DataTable))
                {
                    DataTable source = (DataTable)DataSource;

                    if (source.Rows.Count == 0)
                    {
                        base.RenderChildren(writer);
                        return;
                    }

                    foreach (DataRow dr in source.Rows)
                    {
                        string value = dr[0].ToString();
                        string imgPath = dr[1].ToString();
                        string text = dr[2].ToString();
                        bool selected = currentValue.Equals(value);

                        if (selected)
                            writer.Write("" + text + "");
                        else
                        {
                            writer.Write("" + text + "");
                        }
                        writer.WriteLine();
                    }
                }
            }
            else
            {
                base.RenderChildren(writer);
            }
        }

        /// Set the jQuery script for the combo at the beginning of the page request
        public override void RenderControl(HtmlTextWriter writer)
        {
            base.RenderControl(writer);

            StringBuilder scriptInit = new StringBuilder();

            scriptInit.Append(" <script type=\"text/javascript\"/> ");
            scriptInit.Append(" Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler); ");
            scriptInit.Append("    function EndRequestHandler(sender, args) { ");
            scriptInit.Append("       if (args.get_error() == undefined) { ");
            scriptInit.Append("            setImageComBo_" + this.ID + "(); ");
            scriptInit.Append("       }  ");
            scriptInit.Append("     } ");
            scriptInit.Append("   function setImageComBo_" + this.ID + "() { ");
            scriptInit.Append("       $(document).ready(function() { ");
            scriptInit.Append("               $('#" + this.ID + "').msDropDown();                       ");
            scriptInit.Append("       });  ");
            scriptInit.Append("   }  ");
            scriptInit.Append("   setImageComBo_" + this.ID + "();    ");
            scriptInit.Append("</script>");

            writer.Write(scriptInit.ToString());
        }

    }


}
