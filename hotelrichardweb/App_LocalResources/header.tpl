<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang_iso}">
	<head>
		<title>{$meta_title|escape:'htmlall':'UTF-8'}</title>
{if isset($meta_description) AND $meta_description}
		<meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
{/if}
{if isset($meta_keywords) AND $meta_keywords}
		<meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
{/if}
		<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
		<meta name="generator" content="PrestaShop" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,follow" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$img_ps_dir}favicon.ico" />
		<link rel="shortcut icon" type="image/x-icon" href="{$img_ps_dir}favicon.ico" />
{if isset($css_files)}
	{foreach from=$css_files key=css_uri item=media}
	<link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
	{/foreach}
{/if}
		<script type="text/javascript" src="{$content_dir}js/tools.js"></script>
		<script type="text/javascript">
			var baseDir = '{$content_dir}';
			var static_token = '{$static_token}';
			var token = '{$token}';
			var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
			var roundMode = {$roundMode};
		</script>
		<script type="text/javascript" src="{$content_dir}js/jquery/jquery-1.2.6.pack.js"></script>
		<script type="text/javascript" src="{$content_dir}js/jquery/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="{$content_dir}js/jquery/jquery.hotkeys-0.7.8-packed.js"></script>
        <script type="text/javascript" src="http://www.rapidpapet.fr/themes/rapidpapet/js/sousmenu.js"></script>

		{if isset($js_files)}
	{foreach from=$js_files item=js_uri}
	<script type="text/javascript" src="{$js_uri}"></script>
	{/foreach}
{/if}
		{$HOOK_HEADER}
		
	</head>
	
	<body {if $page_name}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if}>
	{if !$content_only}
		<noscript><ul><li>{l s='This shop requires JavaScript to run correctly. Please activate JavaScript in your browser.'}</li></ul></noscript>
		<div id="page">

			<!-- Header -->
			<div id="header">
				<h1 id="logo"><a href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}"><img src="http://www.rapidpapet.fr/themes/rapidpapet/img/1x1.gif" alt="{$shop_name|escape:'htmlall':'UTF-8'}" width="530" height="180" border="0"/></a></h1>
<div id="header_right">
					{$HOOK_TOP}
				</div>
                
                
<div id="menu_haut">
	<ul id="menu">
	  <li id="classement"><a href="{$base_dir}43-classement" onMouseOver="afficherMasquer('sous_menu_classement','afficher')" onMouseOut="afficherMasquer('sous_menu_classement','masquer')">Classement</a>	  </li>
                        
      <li id="ecriture_correction"><a href="{$base_dir}24-ecriture-et-correction" onMouseOver="afficherMasquer('sous_menu_ecriture_correction','afficher')" onMouseOut="afficherMasquer('sous_menu_ecriture_correction','masquer')">Ecriture / Correction</a>	  </li>
                        
      <li id="espace_ecoles"><a href="{$base_dir}90-espace-ecoles" onMouseOver="afficherMasquer('sous_menu_espace_ecoles','afficher')" onMouseOut="afficherMasquer('sous_menu_espace_ecoles','masquer')">Espace Ecoles</a>	  </li>
      <li id="fournitures_diverses"><a href="{$base_dir}70-fournitures-diverses" onMouseOver="afficherMasquer('sous_menu_fournitures_diverses','afficher')" onMouseOut="afficherMasquer('sous_menu_fournitures_diverses','masquer')">Fournitures Diverses</a>	  </li>
                        
      <li id="loisirs_creatifs"><a href="{$base_dir}58-loisirs-creatifs" onMouseOver="afficherMasquer('sous_menu_loisirs_creatifs','afficher')" onMouseOut="afficherMasquer('sous_menu_loisirs_creatifs','masquer')">Loisirs Créatifs</a>	  </li>
                        
      <li id="papeterie"><a href="{$base_dir}content/36-lustres" onMouseOver="afficherMasquer('sous_menu_papeterie','afficher')" onMouseOut="afficherMasquer('sous_menu_papeterie','masquer')">Papeterie</a>
	  </li>
                        
                        <li id="peinture_arts_plastiques"><a href="{$base_dir}39-peinture-et-arts-plastiques" onMouseOver="afficherMasquer('sous_menu_peinture_arts_plastiques','afficher')" onMouseOut="afficherMasquer('sous_menu_peinture_arts_plastiques','masquer')">Peinture / Arts Plastiques</a>	  </li>
	</ul>
                        
                        <div id="sous_menu_classement" class="cache" onMouseOver="afficherMasquer('sous_menu_classement','afficher')" onMouseOut="afficherMasquer('sous_menu_classement','masquer')" >
						<a href="http://www.rapidpapet.fr/45-chemises" title="" class="sousmenu">Chemises</a><br />
<a href="http://www.rapidpapet.fr/46-classeurs" title="" class="sousmenu">Classeurs</a><br />
<a href="http://www.rapidpapet.fr/44-porte-vues" title="" class="sousmenu">Porte vues</a>
						</div>
                        
						<div id="sous_menu_ecriture_correction" class="cache" onMouseOver="afficherMasquer('sous_menu_ecriture_correction','afficher')" onMouseOut="afficherMasquer('sous_menu_ecriture_correction','masquer')" >
						<a href="http://www.rapidpapet.fr/26-correction" title="Stylos correcteurs et rubans correcteurs" class="sousmenu">Correction</a><br>
<a href="http://www.rapidpapet.fr/27-crayons" title="Crayons BIC et ULMANN" class="sousmenu">Crayons</a><br>
<a href="http://www.rapidpapet.fr/29-crayons-de-couleurs" title="Crayons de couleur BIC et ULMANN" class="sousmenu">Crayons de couleurs</a><br>
<a href="http://www.rapidpapet.fr/878909-crayons-acquarelle" title="Crayons Acquarelle" class="sousmenu">Crayons Acquarelle</a><br>
<a href="http://www.rapidpapet.fr/878911-crayons-MEGA" title="Crayons Mega" class="sousmenu">Crayons MEGA</a><br>
<a href="http://www.rapidpapet.fr/878910-crayons-vernis" title="Crayons Vernis" class="sousmenu">Crayons fins</a><br>
<a href="http://www.rapidpapet.fr/878908-pastels" title="Pastels BIC et GIOTTO" class="sousmenu">Pastels</a><br>
<a href="http://www.rapidpapet.fr/878907-feutres" title="Feutres BIC Visacolor et GIOTTO" class="sousmenu">Feutres</a><br>
<a href="http://www.rapidpapet.fr/31-feutres-specuteciaux" title="Feutres pointe large ou pointe geante GIOTTO" class="sousmenu">Feutres speciaux</a><br>
<a href="http://www.rapidpapet.fr/28-gommes-et-tailles-crayons" title="Gommes ULMANN et LYRA" class="sousmenu">Gommes et tailles crayons</a><br>
<a href="http://www.rapidpapet.fr/25-stylos" title="Stylos BIC" class="sousmenu">Stylos</a><br />
<a href="http://www.rapidpapet.fr/32-surligneurs" title="Surligneurs TRATTO" class="sousmenu">Surligneurs</a>
	</div>
                        
                        <div id="sous_menu_espace_ecoles" class="cache" onMouseOver="afficherMasquer('sous_menu_espace_ecoles','afficher')" onMouseOut="afficherMasquer('sous_menu_espace_ecoles','masquer')" >
						<a href="http://www.rapidpapet.fr/92-accessoires" title="Accessoires" class="sousmenu">Accessoires</a><br>
<a href="http://www.rapidpapet.fr/93-papier-et-enveloppes" title="Papier et enveloppes" class="sousmenu">Papier et enveloppes</a><br>
<a href="http://www.rapidpapet.fr/91-schoolpacks" title="Schoolpacks" class="sousmenu">Schoolpacks</a>
	</div>
                        
                        <div id="sous_menu_fournitures_diverses" class="cache" onMouseOver="afficherMasquer('sous_menu_fournitures_diverses','afficher')" onMouseOut="afficherMasquer('sous_menu_fournitures_diverses','masquer')" >
						<a href="http://www.rapidpapet.fr/74-adhesif" title="Rubans adhesifs" class="sousmenu">Adhesif</a><br>
<a href="http://www.rapidpapet.fr/878903-ardoises-et-feutres-effacables" title="Ardoises" class="sousmenu">Ardoises et feutres Effacables</a><br>
<a href="http://www.rapidpapet.fr/72-collage" title="Colles" class="sousmenu">Collage</a><br>
<a href="http://www.rapidpapet.fr/75-couvre-livres" title="Materiel pour couvrir les livres" class="sousmenu">Couvre livres</a><br>
<a href="http://www.rapidpapet.fr/73-decoupage" title="Ciseaux" class="sousmenu">Decoupage</a><br>
<a href="http://www.rapidpapet.fr/878904-geometrie" title="Geometrie" class="sousmenu">Geometrie</a>
	</div>
                        
                        <div id="sous_menu_loisirs_creatifs" class="cache" onMouseOver="afficherMasquer('sous_menu_loisirs_creatifs','afficher')" onMouseOut="afficherMasquer('sous_menu_loisirs_creatifs','masquer')" >
						<a href="http://www.rapidpapet.fr/61-gommettes" title="Gommettes" class="sousmenu">Gommettes</a><br>
<a href="http://www.rapidpapet.fr/62-paillettes" title="Paillettes" class="sousmenu">Paillettes</a><br>
<a href="http://www.rapidpapet.fr/63-papiers-speciaux" title="Papier crepon, papier kraft, papier metallise" class="sousmenu">Papiers speciaux</a><br>
<a href="http://www.rapidpapet.fr/59-pate-a-modeler" title="Pate a modeler emporte pieces" class="sousmenu">Pate a modeler</a><br>
<a href="http://www.rapidpapet.fr/60-pochoirs" title="Pochoirs" class="sousmenu">Pochoirs</a>
	</div>
                        
						<div id="sous_menu_papeterie" class="cache" onMouseOver="afficherMasquer('sous_menu_papeterie','afficher')" onMouseOut="afficherMasquer('sous_menu_papeterie','masquer')" >
						<a href="http://www.rapidpapet.fr/50-agendas" title="Agendas et cahiers de texte" class="sousmenu">Agendas</a><br>
<a href="http://www.rapidpapet.fr/48-cahiers" title="Cahiers, cahiers de TP, repertoires" class="sousmenu">Cahiers</a><br>
<a href="http://www.rapidpapet.fr/49-copies-doubles-et-feuilles" title="Feuilles simples et doubles" class="sousmenu">Copies doubles et feuilles</a><br>
<a href="http://www.rapidpapet.fr/51-proteges-cahiers" title="Proteges cahiers" class="sousmenu">Proteges cahiers</a>
	</div>
                        
                        <div id="sous_menu_peinture_arts_plastiques" class="cache" onMouseOver="afficherMasquer('sous_menu_peinture_arts_plastiques','afficher')" onMouseOut="afficherMasquer('sous_menu_peinture_arts_plastiques','masquer')" >
						<a href="http://www.rapidpapet.fr/41-pinceaux-et-rouleaux" title="" class="sousmenu">Pinceaux et rouleaux</a><br>
<a href="http://www.rapidpapet.fr/40-tabliers" title="" class="sousmenu">Tabliers</a><br>
<a href="http://www.rapidpapet.fr/42-tubes-de-gouache" title="" class="sousmenu">Tubes de Gouache</a>
	</div>
                        
			  </div>
                
                
	</div>

			<div id="columns">
				<!-- Left -->
				<div id="left_column" class="column">
					{$HOOK_LEFT_COLUMN}
				</div>

				<!-- Center -->
				<div id="center_column">
	{/if}
