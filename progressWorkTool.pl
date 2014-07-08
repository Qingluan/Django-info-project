#!/usr/bin/perl
# use strict;

die("lock argu ") if @ARGV <2;

$arg =  shift @ARGV;
$filename = "./workProgress.html";
# print "res $arg";
# print @ARGV;
# print ($key."==>".$val."\n") while (($key,$val) = each %ENV )  ;


# print "$ENV{PWD}";

die("arg error : '$arg'") unless  ($arg =~ m/(-[ct])/g);


$templates = '<!DOCTYPE html><html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta name="generated-by" content="Markdown PRO, http://markdownpro.com"/><title></title><style type="text/css">html,body{margin:0;padding:0;}body {padding: 20px}h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,cite,code,del,dfn,em,img,q,s,samp,small,strike,strong,sub,sup,tt,var,dd,dl,dt,li,ol,ul,fieldset,form,label,legend,button,table,caption,tbody,tfoot,thead,tr,th,td{margin:0;padding:0;border:0;font-weight:normal;font-style:normal;font-size:100%;line-height:1;font-family:inherit;}table{border-collapse:collapse;border-spacing:0;}ol,ul{list-style:none;}q:before,q:after,blockquote:before,blockquote:after{content:"";}html{overflow-y:scroll;font-size:100%;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;}a:focus{outline:thin dotted;}a:hover,a:active{outline:0;}article,aside,details,figcaption,figure,footer,header,hgroup,nav,section{display:block;}audio,canvas,video{display:inline-block;*display:inline;*zoom:1;}audio:not([controls]){display:none;}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline;}sup{top:-0.5em;}sub{bottom:-0.25em;}img{border:0;-ms-interpolation-mode:bicubic;}button,input,select,textarea{font-size:100%;margin:0;vertical-align:baseline;*vertical-align:middle;}button,input{line-height:normal;*overflow:visible;}button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0;}button,input[type="button"],input[type="reset"],input[type="submit"]{cursor:pointer;-webkit-appearance:button;}input[type="search"]{-webkit-appearance:textfield;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;}input[type="search"]::-webkit-search-decoration{-webkit-appearance:none;}textarea{overflow:auto;vertical-align:top;}html,body{background-color:#ffffff;}body{margin:0;font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-size:13px;font-weight:normal;line-height:18px;color:#404040;}.container{width:940px;margin-left:auto;margin-right:auto;zoom:1;}.container:before,.container:after{display:table;content:"";zoom:1;*display:inline;}.container:after{clear:both;}.container-fluid{position:relative;min-width:940px;padding-left:20px;padding-right:20px;zoom:1;}.container-fluid:before,.container-fluid:after{display:table;content:"";zoom:1;*display:inline;}.container-fluid:after{clear:both;}.container-fluid>.sidebar{float:left;width:220px;}.container-fluid>.content{margin-left:240px;}a{color:#0069d6;text-decoration:none;line-height:inherit;font-weight:inherit;}a:hover{color:#00438a;text-decoration:underline;}.pull-right{float:right;}.pull-left{float:left;}.hide{display:none;}.show{display:block;}.row{zoom:1;margin-left:-20px;}.row:before,.row:after{display:table;content:"";zoom:1;*display:inline;}.row:after{clear:both;}p{font-size:13px;font-weight:normal;line-height:18px;margin-bottom:9px;}p small{font-size:11px;color:#bfbfbf;}h1,h2,h3,h4,h5,h6{font-weight:bold;color:#404040;}h1 small,h2 small,h3 small,h4 small,h5 small,h6 small{color:#bfbfbf;}h1{margin-bottom:18px;font-size:30px;line-height:36px;}h1 small{font-size:18px;}h2{font-size:24px;line-height:36px;}h2 small{font-size:14px;}h3,h4,h5,h6{line-height:36px;}h3{font-size:18px;}h3 small{font-size:14px;}h4{font-size:16px;}h4 small{font-size:12px;}h5{font-size:14px;}h6{font-size:13px;color:#bfbfbf;text-transform:uppercase;}ul,ol{margin:0 0 18px 25px;}ul ul,ul ol,ol ol,ol ul{margin-bottom:0;}ul{list-style:disc;}ol{list-style:decimal;}li{line-height:18px;color:#808080;}ul.unstyled{list-style:none;margin-left:0;}dl{margin-bottom:18px;}dl dt,dl dd{line-height:18px;}dl dt{font-weight:bold;}dl dd{margin-left:9px;}hr{margin:20px 0 19px;border:0;border-bottom:1px solid #eee;}strong{font-style:inherit;font-weight:bold;}em{font-style:italic;font-weight:inherit;line-height:inherit;}.muted{color:#bfbfbf;}blockquote{margin-bottom:18px;border-left:5px solid #eee;padding-left:15px;}blockquote p{font-size:14px;font-weight:300;line-height:18px;margin-bottom:0;}blockquote small{display:block;font-size:12px;font-weight:300;line-height:18px;color:#bfbfbf;}blockquote small:before{content:"\2014 \00A0";}address{display:block;line-height:18px;margin-bottom:18px;}code,pre{padding:0 3px 2px;font-family:Monaco, Andale Mono, Courier New, monospace;font-size:12px;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px;}code{padding:1px 3px;}pre{background-color:#f5f5f5;display:block;padding:8.5px;margin:0 0 18px;line-height:18px;font-size:12px;border:1px solid #ccc;border:1px solid rgba(0, 0, 0, 0.15);-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px;white-space:pre;white-space:pre-wrap;word-wrap:break-word;}form{margin-bottom:18px;}fieldset{margin-bottom:18px;padding-top:18px;}fieldset legend{display:block;padding-left:150px;font-size:19.5px;line-height:1;color:#404040;*padding:0 0 5px 145px;*line-height:1.5;}form .clearfix{margin-bottom:18px;zoom:1;}form .clearfix:before,form .clearfix:after{display:table;content:"";zoom:1;*display:inline;}form .clearfix:after{clear:both;}label,input,select,textarea{font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-size:13px;font-weight:normal;line-height:normal;}label{padding-top:6px;font-size:13px;line-height:18px;float:left;width:130px;text-align:right;color:#404040;}form .input{margin-left:150px;}input[type=checkbox],input[type=radio]{cursor:pointer;}input,textarea,select,.uneditable-input{display:inline-block;width:210px;height:18px;padding:4px;font-size:13px;line-height:18px;color:#808080;border:1px solid #ccc;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px;}input[type=checkbox],input[type=radio]{width:auto;height:auto;padding:0;margin:3px 0;*margin-top:0;line-height:normal;border:none;}input[type=file]{background-color:#ffffff;padding:initial;border:initial;line-height:initial;-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none;}input[type=button],input[type=reset],input[type=submit]{width:auto;height:auto;}select,input[type=file]{height:27px;line-height:27px;*margin-top:4px;}select[multiple]{height:inherit;}textarea{height:auto;}.uneditable-input{background-color:#ffffff;display:block;border-color:#eee;-webkit-box-shadow:inset 0 1px 2px rgba(0, 0, 0, 0.025);-moz-box-shadow:inset 0 1px 2px rgba(0, 0, 0, 0.025);box-shadow:inset 0 1px 2px rgba(0, 0, 0, 0.025);cursor:not-allowed;}:-moz-placeholder{color:#bfbfbf;}::-webkit-input-placeholder{color:#bfbfbf;}input,textarea{-webkit-transition:border linear 0.2s,box-shadow linear 0.2s;-moz-transition:border linear 0.2s,box-shadow linear 0.2s;-ms-transition:border linear 0.2s,box-shadow linear 0.2s;-o-transition:border linear 0.2s,box-shadow linear 0.2s;transition:border linear 0.2s,box-shadow linear 0.2s;-webkit-box-shadow:inset 0 1px 3px rgba(0, 0, 0, 0.1);-moz-box-shadow:inset 0 1px 3px rgba(0, 0, 0, 0.1);box-shadow:inset 0 1px 3px rgba(0, 0, 0, 0.1);}input:focus,textarea:focus{outline:0;border-color:rgba(82, 168, 236, 0.8);-webkit-box-shadow:inset 0 1px 3px rgba(0, 0, 0, 0.1),0 0 8px rgba(82, 168, 236, 0.6);-moz-box-shadow:inset 0 1px 3px rgba(0, 0, 0, 0.1),0 0 8px rgba(82, 168, 236, 0.6);box-shadow:inset 0 1px 3px rgba(0, 0, 0, 0.1),0 0 8px rgba(82, 168, 236, 0.6);}input[type=file]:focus,input[type=checkbox]:focus,select:focus{-webkit-box-shadow:none;-moz-box-shadow:none;box-shadow:none;outline:1px dotted #666;}form div.clearfix.error{background:#fae5e3;padding:10px 0;margin:-10px 0 10px;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;}form div.clearfix.error>label,form div.clearfix.error span.help-inline,form div.clearfix.error span.help-block{color:#9d261d;}form div.clearfix.error input,form div.clearfix.error textarea{border-color:#c87872;-webkit-box-shadow:0 0 3px rgba(171, 41, 32, 0.25);-moz-box-shadow:0 0 3px rgba(171, 41, 32, 0.25);box-shadow:0 0 3px rgba(171, 41, 32, 0.25);}form div.clearfix.error input:focus,form div.clearfix.error textarea:focus{border-color:#b9554d;-webkit-box-shadow:0 0 6px rgba(171, 41, 32, 0.5);-moz-box-shadow:0 0 6px rgba(171, 41, 32, 0.5);box-shadow:0 0 6px rgba(171, 41, 32, 0.5);}form div.clearfix.error .input-prepend span.add-on,form div.clearfix.error .input-append span.add-on{background:#f4c8c5;border-color:#c87872;color:#b9554d;}table{width:100%;margin-bottom:18px;padding:0;border-collapse:separate;*border-collapse:collapse;font-size:13px;border:1px solid #ddd;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;}table th,table td{padding:10px 10px 9px;line-height:18px;text-align:left;}table th{padding-top:9px;font-weight:bold;vertical-align:middle;border-bottom:1px solid #ddd;}table td{vertical-align:top;}table th+th,table td+td{border-left:1px solid #ddd;}table tr+tr td{border-top:1px solid #ddd;}table tbody tr:first-child td:first-child{-webkit-border-radius:4px 0 0 0;-moz-border-radius:4px 0 0 0;border-radius:4px 0 0 0;}table tbody tr:first-child td:last-child{-webkit-border-radius:0 4px 0 0;-moz-border-radius:0 4px 0 0;border-radius:0 4px 0 0;}table tbody tr:last-child td:first-child{-webkit-border-radius:0 0 0 4px;-moz-border-radius:0 0 0 4px;border-radius:0 0 0 4px;}table tbody tr:last-child td:last-child{-webkit-border-radius:0 0 4px 0;-moz-border-radius:0 0 4px 0;border-radius:0 0 4px 0;}.zebra-striped tbody tr:nth-child(odd) td{background-color:#f9f9f9;}.zebra-striped tbody tr:hover td{background-color:#f5f5f5;}.zebra-striped .header{cursor:pointer;}.zebra-striped .header:after{content:"";float:right;margin-top:7px;border-width:0 4px 4px;border-style:solid;border-color:#000 transparent;visibility:hidden;}.zebra-striped .header:hover:after{visibility:visible;}footer{margin-top:17px;padding-top:17px;border-top:1px solid #eee;}.page-header{margin-bottom:17px;border-bottom:1px solid #ddd;-webkit-box-shadow:0 1px 0 rgba(255, 255, 255, 0.5);-moz-box-shadow:0 1px 0 rgba(255, 255, 255, 0.5);box-shadow:0 1px 0 rgba(255, 255, 255, 0.5);}.page-header h1{margin-bottom:8px;}.close{float:right;color:#000000;font-size:20px;font-weight:bold;line-height:13.5px;text-shadow:0 1px 0 #ffffff;filter:alpha(opacity=20);-khtml-opacity:0.2;-moz-opacity:0.2;opacity:0.2;}.close:hover{color:#000000;text-decoration:none;filter:alpha(opacity=40);-khtml-opacity:0.4;-moz-opacity:0.4;opacity:0.4;}pre {	padding: 0;	margin: 10px 0px 10px;	overflow: auto; /*--If the Code exceeds the width, a scrolling is available--*/	overflow-Y: hidden;  /*--Hides vertical scroll created by IE--*/}pre code {	margin: 5px;  /*--Left Margin--*/	padding: 0px;	display: block;    line-height: 18px;}.center { text-align:center}.left {text-align:left}.right {text-align:right}</style><style type="text/css">body{font-size:14px;line-height:1.6;font-family: Helvetica, arial, freesans, clean, sans-serif;padding: 20px;}body>*:first-child{margin-top:0!important;}body>*:last-child{margin-bottom:0!important;}body a:active {outline: none;}body a:hover {text-decoration: underline;}body a {color: #4183C4;text-decoration: none;}body a.absent{color:#c00;}body h1, body h2, h3, h4, h5, h6{margin:20px 0 10px;padding:0;font-weight:bold;-webkit-font-smoothing:antialiased;}body h1 tt, h1 code, h2 tt, h2 code, h3 tt, h3 code, h4 tt, h4 code, h5 tt, h5 code, h6 tt, h6 code{font-size:inherit;}body h1{font-size:28px;color:#000;}body h2{font-size:24px;border-bottom:1px solid #ccc;color:#000;}body h3{font-size:18px;}body h4{font-size:16px;}body h5{font-size:14px;}body h6{color:#777;font-size:14px;}body p, blockquote, ul, ol, dl, li, table, pre{margin:15px 0;}body hr{background:transparent url("../../images/modules/pulls/dirty-shade.png") repeat-x 0 0;border:0 none;color:#ccc;height:4px;padding:0;}body>h2:first-child,>h1:first-child,>h1:first-child+h2,>h3:first-child,>h4:first-child,>h5:first-child,>h6:first-child{margin-top:0;padding-top:0;}body h1+p, h2+p, h3+p, h4+p, h5+p, h6+p{margin-top:0;}body li p.first{display:inline-block;}body ul, ol{padding-left:30px;}body ul li>:first-child, ol li>:first-child{margin-top:0;}body ul li>:last-child, ol li>:last-child{margin-bottom:0;}body dl{padding:0;}body dl dt{font-size:14px;font-weight:bold;font-style:italic;padding:0;margin:15px 0 5px;}body dl dt:first-child{padding:0;}body dl dt>:first-child{margin-top:0;}body dl dt>:last-child{margin-bottom:0;}body dl dd{margin:0 0 15px;padding:0 15px;}body dl dd>:first-child{margin-top:0;}body dl dd>:last-child{margin-bottom:0;}body blockquote{border-left:4px solid #DDD;padding:0 15px;color:#777;}body blockquote>:first-child{margin-top:0;}body blockquote>:last-child{margin-bottom:0;}body table{padding:0;}body table tr{border-top:1px solid #ccc;background-color:#fff;margin:0;padding:0;}body table tr:nth-child(2n){background-color:#f8f8f8;}body table tr th{font-weight:bold;}body table tr th, table tr td{border:1px solid #ccc;text-align:left;margin:0;padding:6px 13px;}body table tr th>:first-child, table tr td>:first-child{margin-top:0;}body table tr th>:last-child, table tr td>:last-child{margin-bottom:0;}body img{max-width:100%;}body span.frame{display:block;overflow:hidden;}body span.frame>span{border:1px solid #ddd;display:block;float:left;overflow:hidden;margin:13px 0 0;padding:7px;width:auto;}body span.frame span img{display:block;float:left;}body span.frame span span{clear:both;color:#333;display:block;padding:5px 0 0;}body span.align-center{display:block;overflow:hidden;clear:both;}body span.align-center>span{display:block;overflow:hidden;margin:13px auto 0;text-align:center;}body span.align-center span img{margin:0 auto;text-align:center;}body span.align-right{display:block;overflow:hidden;clear:both;}body span.align-right>span{display:block;overflow:hidden;margin:13px 0 0;text-align:right;}body span.align-right span img{margin:0;text-align:right;}body span.float-left{display:block;margin-right:13px;overflow:hidden;float:left;}body span.float-left span{margin:13px 0 0;}body span.float-right{display:block;margin-left:13px;overflow:hidden;float:right;}body span.float-right>span{display:block;overflow:hidden;margin:13px auto 0;text-align:right;}body code, tt{margin:0 2px;padding:0 5px;white-space:nowrap;border:1px solid #eaeaea;background-color:#f8f8f8;border-radius:3px;}body pre>code{margin:0;padding:0;white-space:pre;border:none;background:transparent;}body .highlight pre, pre{background-color:#f8f8f8;border:1px solid #ccc;font-size:13px;line-height:19px;overflow:auto;padding:6px 10px;border-radius:3px;}body pre code, pre tt{background-color:transparent;border:none;}</style></head><body>';
$templates_ends = "\n</body>\n</html>\n";





sub createWorkDoc{
	my($name,@mem) = @_;
	$init = $templates ."<h1>项目名称 ： <em>$name</em></h1>\n<h3>Joiner:</h3>\n<blockquote>\n<p>@mem</p>\n</blockquote>".$templates_ends."\n";
	# print $init;
	open FILE ,">$filename";
	select FILE;
	print $init;
	select STDOUT;
	close FILE;

}



sub findLast{

	@args = @_;
	@ARGV = ($filename);
	$^I = ".bak";
	while(<>){
		if (m/(<\/body>)/g ){
			&todayMission($_,@args) ;
			next;
		}else{
			print;

		}
		
	}
	
}

sub todayMission{

	my($location,$today,$next) = @_;

	$nowtime =  gmtime ;
	$today_mission = "<h2>$nowtime</h2>\n<pre><code>$today</code></pre>\n";
	$next_misison = "<h2>Next mission</h2>\n<pre><code>$next</code></pre>\n";
	$location = "\n$today_mission\n$next_misison\n$location";
	print $location;

}




$arg eq "-c"  ? &createWorkDoc(@ARGV): findLast  @ARGV ;

# $_ = &createWorkDoc("ios","zhangyang","qingluan");

printf("fuck!\n");
