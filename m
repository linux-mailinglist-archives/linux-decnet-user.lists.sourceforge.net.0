Return-Path: <linux-decnet-user-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-decnet-user@lfdr.de
Delivered-To: lists+linux-decnet-user@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7F886110
	for <lists+linux-decnet-user@lfdr.de>; Thu,  8 Aug 2019 13:44:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-decnet-user-bounces@lists.sourceforge.net>)
	id 1hvgqG-00021o-D8; Thu, 08 Aug 2019 11:44:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <emserrat@hotmail.com>) id 1hvgqF-00021h-Ut
 for linux-decnet-user@lists.sourceforge.net; Thu, 08 Aug 2019 11:44:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:In-Reply-To:References:
 Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h7+iKQKtFhyn3IKfZ13vJFz1Vdm+7+GPOAthNCZm2xM=; b=WTrswlZ815tweIA0xxvQpl5XBS
 KJ94EuUtr5RcKWCXdO9vKS34zpL75W7wLtJTK9V8JcyQB3SMK+vsiCm8aaCmjh3CYeZuJfw+EUuMN
 +JsapB4FX/Q/1QnQ5Qw2BccparozogPnTCMqbd7mGulULXKf01sm5xQrm6fMGBleyy/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=h7+iKQKtFhyn3IKfZ13vJFz1Vdm+7+GPOAthNCZm2xM=; b=EQ8ZDbPG8Ydj05VMCpOCUN4YL6
 pmmVyHTLyJFLdDaz6xyHGkgg6xeRviHxuA9pVX/0YK3kzbuhhvFfSJ6OyaqllouY/H90wSSEM/wY1
 DBSgWf8w/wcCA6y9qsCm1p+YQ1cjyUBNgQIldiPvkvWN/sNtYJpEwwk8BCoeNc2/cDCw=;
Received: from mail-oln040092006012.outbound.protection.outlook.com
 ([40.92.6.12] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hvgqD-00Ez9t-3y
 for linux-decnet-user@lists.sourceforge.net; Thu, 08 Aug 2019 11:44:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lR+gFUDMN1pw2o+k1ZPOgNaD011Z2kf5oKRQ1ofAXyGP6DCeZQTQ2z8r/3TxvrLl2RSLvc/T37s6bYHb+fazG9TW+EECyoRPa0vhhepkxQfRVIXkrb7hnnFV5wsPs0V21K/MQCuca8HOs018CdO7ENsSl9tUoYcpowG8mC4n6EwLy3tM+lJLrZii2x5kx0HAR9RBuXbaG3rzvkiGJSIuMYBzkt1xOZurR1Rx3lTRsVxZO8AXoA0gWpOPY4L7CGamNw9CplEk8pL6Zwp960Y9r9TvACrT3YFRYKxxD+KlhSJW4DgwVcIGxtBWdGnRt69Ze6zWibejWpLR2rGNf78ayQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h7+iKQKtFhyn3IKfZ13vJFz1Vdm+7+GPOAthNCZm2xM=;
 b=VoiA1BX8PE1Eah2d+ALIROVF0OyBb8O7EHWwU2BQTOceyepsVZNmofDeB8OoTELTXfrEz5KdIyX/ExMMl6gbV2UB6OhVgiPp0yi30PnWpJLY2JxU02ThqITmBk0t+px1VHhKl+hwKjy0GBhex1laWJ3P1o0Wb/3a9BEdGIW3aljRv1ysom81hbGWmd8otFm0jfWXozJIpQrxCp0djIVRq1ucp++aabN6Z5jMKoavQNfXHbgOlovvxSHtbdTH7KpyBBXc6kT3ahENukrbj+rWyW+KnMJO6Jx5Jt8xHHv0tXVtb8kgEb/vuaAuPYPlSDPBeHtkbGohXlFhFvyx1R0fLg==
ARC-Authentication-Results: i=1; mx.microsoft.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h7+iKQKtFhyn3IKfZ13vJFz1Vdm+7+GPOAthNCZm2xM=;
 b=qYBEcxPsyOOQtuR+UBRQmHn1ck24MbyNAOTDA4cxpZcbR5Q/5gHRW4bnleRumVJenWNJLYPXlyPByeFJ92mdfHZCCm+VbxlfSX0EW6as9OxRiRl/ihOBiF6hq+NwWd4ltXq9U4lNQ1Xp6WuauVud0jl2fsMD5U4rAIREry/8e6NdJcyqezVwRZbFfoJ+G+mcO+wC8COLUSgeZ+jLQGb7ci0llbaibNK659Ko5VP1JkZ/f03eQBG8RHd7WmQAqqod0RmHxNNPaBfloWCP/TR9KWh3nxTNMwqSop69MUnC5aoyJrcQP/Lz96EoogBklDKM13Kxt/5QvAulI+KSpUAIYA==
Received: from DM3NAM03FT043.eop-NAM03.prod.protection.outlook.com
 (10.152.82.58) by DM3NAM03HT224.eop-NAM03.prod.protection.outlook.com
 (10.152.83.15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.14; Thu, 8 Aug
 2019 11:44:14 +0000
Received: from DM5PR22MB0379.namprd22.prod.outlook.com (10.152.82.51) by
 DM3NAM03FT043.mail.protection.outlook.com (10.152.83.227) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15 via Frontend Transport; Thu, 8 Aug 2019 11:44:14 +0000
Received: from DM5PR22MB0379.namprd22.prod.outlook.com
 ([fe80::d989:272b:4d1b:ae7a]) by DM5PR22MB0379.namprd22.prod.outlook.com
 ([fe80::d989:272b:4d1b:ae7a%11]) with mapi id 15.20.2136.018; Thu, 8 Aug 2019
 11:44:14 +0000
From: Eduardo Marcelo Serrat <emserrat@hotmail.com>
To: David Miller <davem@davemloft.net>, "clabbe@baylibre.com"
 <clabbe@baylibre.com>
Thread-Topic: [Linux-decnet-user] [PATCH] Documentation: decnet: remove
 reference to CONFIG_DECNET_ROUTE_FWMARK
Thread-Index: AQHU+G+zpkwLkl5wg02mvKz89xJFgKbxymSj
Date: Thu, 8 Aug 2019 11:44:14 +0000
Message-ID: <DM5PR22MB03797234267E8B37EA3080BBC4D70@DM5PR22MB0379.namprd22.prod.outlook.com>
References: <1555778581-21468-1-git-send-email-clabbe@baylibre.com>,
 <20190421.112529.876668648990643427.davem@davemloft.net>
In-Reply-To: <20190421.112529.876668648990643427.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:A89E544472EB3A2CBFD3A1BE45B49E9241C99B783DF36121D5FC8A1DD84879EA;
 UpperCasedChecksum:F6E25C114F819CA4ECAAA7643DADED487DD9B3C8B34AFCED309EF95AA250D87B;
 SizeAsReceived:7274; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [oJ4v0lCI0oKp6kX1fwJHbndZpqEvgHwN]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:DM3NAM03HT224; 
x-ms-traffictypediagnostic: DM3NAM03HT224:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-message-info: JsLF24jIFq1kgGDYPnGM48e211ralWGWKfOa1k2DBoE5fFx+IRjPywhcGrUTR1Lyvnkto2GY4wlqe9pD4uG7SgtcDcflRgqw5fxMNAr/j8bcfN8+kYdiZj9nI+KHQthOUmvIzaPDNw/th58ZwMb/go07oA0AZlJUi/VGJiQ1hBpG9Q6cNgx+8aw5s0oVBpTx
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 763e0bac-10b0-4273-3ee6-08d71bf5bd10
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 11:44:14.7411 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3NAM03HT224
X-Spam-Score: 2.1 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (emserrat[at]hotmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.92.6.12 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: davemloft.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no 'Received:'
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hvgqD-00Ez9t-3y
Subject: Re: [Linux-decnet-user] [PATCH] Documentation: decnet: remove
 reference to CONFIG_DECNET_ROUTE_FWMARK
X-BeenThere: linux-decnet-user@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: For users of DECnet for Linux
 <linux-decnet-user.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux-decnet-user>, 
 <mailto:linux-decnet-user-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux-decnet-user>
List-Post: <mailto:linux-decnet-user@lists.sourceforge.net>
List-Help: <mailto:linux-decnet-user-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux-decnet-user>, 
 <mailto:linux-decnet-user-request@lists.sourceforge.net?subject=subscribe>
Cc: "corbet@lwn.net" <corbet@lwn.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-decnet-user@lists.sourceforge.net"
 <linux-decnet-user@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tgraf@suug.ch" <tgraf@suug.ch>
Content-Type: multipart/mixed; boundary="===============3547675358055014694=="
Errors-To: linux-decnet-user-bounces@lists.sourceforge.net

--===============3547675358055014694==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR22MB03797234267E8B37EA3080BBC4D70DM5PR22MB0379namp_"

--_000_DM5PR22MB03797234267E8B37EA3080BBC4D70DM5PR22MB0379namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

Sorry for using the list for this purpose but we are looking for senior eng=
ineers with knowledge in OpenVMS/ Tru64 Unix, Solaris, HP-UX and of course =
Linux and familiar with virtualization technologies, specially cross platfo=
rm emulators. We need to fill support engineer roles. If anybody interested=
 for positions in the US / Europe please send me an email.

emserrat@hotmail.com


Thanks a lot,
Eduardo Serrat


________________________________
From: David Miller <davem@davemloft.net>
Sent: Sunday, April 21, 2019 6:25 PM
To: clabbe@baylibre.com <clabbe@baylibre.com>
Cc: corbet@lwn.net <corbet@lwn.net>; linux-doc@vger.kernel.org <linux-doc@v=
ger.kernel.org>; netdev@vger.kernel.org <netdev@vger.kernel.org>; linux-dec=
net-user@lists.sourceforge.net <linux-decnet-user@lists.sourceforge.net>; l=
inux-kernel@vger.kernel.org <linux-kernel@vger.kernel.org>; tgraf@suug.ch <=
tgraf@suug.ch>
Subject: Re: [Linux-decnet-user] [PATCH] Documentation: decnet: remove refe=
rence to CONFIG_DECNET_ROUTE_FWMARK

From: Corentin Labbe <clabbe@baylibre.com>
Date: Sat, 20 Apr 2019 16:43:01 +0000

> CONFIG_DECNET_ROUTE_FWMARK was removed in commit 47dcf0cb1005 ("[NET]: Re=
think mark field in struct flowi")
> Since nothing replace it (and nothindg need to replace it, simply remove
> it from documentation.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Applied.


_______________________________________________
Project Home Page: http://linux-decnet.wiki.sourceforge.net/

Linux-decnet-user mailing list
Linux-decnet-user@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-decnet-user


--_000_DM5PR22MB03797234267E8B37EA3080BBC4D70DM5PR22MB0379namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"color: rgb(0, 0, 0); font-family: Calibri,Helvetica,sans-seri=
f; font-size: 12pt;">
<span>Hi all,</span></div>
<div style=3D"color: rgb(0, 0, 0); font-family: Calibri,Helvetica,sans-seri=
f; font-size: 12pt;">
<br>
</div>
<div style=3D"color: rgb(0, 0, 0); font-family: Calibri,Helvetica,sans-seri=
f; font-size: 12pt;">
Sorry for using the list for this purpose but we are looking for senior eng=
ineers with knowledge in OpenVMS/ Tru64 Unix, Solaris, HP-UX and of course =
Linux and familiar with virtualization technologies, specially cross platfo=
rm emulators. We need to fill support
 engineer roles. If anybody interested for positions in the US / Europe ple=
ase send me an email.</div>
<div style=3D"color: rgb(0, 0, 0); font-family: Calibri,Helvetica,sans-seri=
f; font-size: 12pt;">
<br>
</div>
<div style=3D"color: rgb(0, 0, 0); font-family: Calibri,Helvetica,sans-seri=
f; font-size: 12pt;">
emserrat@hotmail.com</div>
<div style=3D"color: rgb(0, 0, 0); font-family: Calibri,Helvetica,sans-seri=
f; font-size: 12pt;">
<br>
</div>
<div style=3D"color: rgb(0, 0, 0); font-family: Calibri,Helvetica,sans-seri=
f; font-size: 12pt;">
<br>
</div>
<div style=3D"color: rgb(0, 0, 0); font-family: Calibri,Helvetica,sans-seri=
f; font-size: 12pt;">
Thanks a lot,</div>
<div style=3D"color: rgb(0, 0, 0); font-family: Calibri,Helvetica,sans-seri=
f; font-size: 12pt;">
Eduardo Serrat</div>
<div style=3D"color: rgb(0, 0, 0); font-family: Calibri,Helvetica,sans-seri=
f; font-size: 12pt;">
<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"color:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif; f=
ont-size:12pt">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Calib=
ri, sans-serif" style=3D"font-size:11pt"><b>From:</b> David Miller &lt;dave=
m@davemloft.net&gt;<br>
<b>Sent:</b> Sunday, April 21, 2019 6:25 PM<br>
<b>To:</b> clabbe@baylibre.com &lt;clabbe@baylibre.com&gt;<br>
<b>Cc:</b> corbet@lwn.net &lt;corbet@lwn.net&gt;; linux-doc@vger.kernel.org=
 &lt;linux-doc@vger.kernel.org&gt;; netdev@vger.kernel.org &lt;netdev@vger.=
kernel.org&gt;; linux-decnet-user@lists.sourceforge.net &lt;linux-decnet-us=
er@lists.sourceforge.net&gt;; linux-kernel@vger.kernel.org
 &lt;linux-kernel@vger.kernel.org&gt;; tgraf@suug.ch &lt;tgraf@suug.ch&gt;<=
br>
<b>Subject:</b> Re: [Linux-decnet-user] [PATCH] Documentation: decnet: remo=
ve reference to CONFIG_DECNET_ROUTE_FWMARK</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">From: Corentin Labbe &lt;clabbe@baylibre.com&gt;<b=
r>
Date: Sat, 20 Apr 2019 16:43:01 &#43;0000<br>
<br>
&gt; CONFIG_DECNET_ROUTE_FWMARK was removed in commit 47dcf0cb1005 (&quot;[=
NET]: Rethink mark field in struct flowi&quot;)<br>
&gt; Since nothing replace it (and nothindg need to replace it, simply remo=
ve<br>
&gt; it from documentation.<br>
&gt; <br>
&gt; Signed-off-by: Corentin Labbe &lt;clabbe@baylibre.com&gt;<br>
<br>
Applied.<br>
<br>
<br>
_______________________________________________<br>
Project Home Page: <a href=3D"http://linux-decnet.wiki.sourceforge.net/">ht=
tp://linux-decnet.wiki.sourceforge.net/</a><br>
<br>
Linux-decnet-user mailing list<br>
Linux-decnet-user@lists.sourceforge.net<br>
<a href=3D"https://lists.sourceforge.net/lists/listinfo/linux-decnet-user">=
https://lists.sourceforge.net/lists/listinfo/linux-decnet-user</a><br>
<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_DM5PR22MB03797234267E8B37EA3080BBC4D70DM5PR22MB0379namp_--


--===============3547675358055014694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3547675358055014694==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Project Home Page: http://linux-decnet.wiki.sourceforge.net/

Linux-decnet-user mailing list
Linux-decnet-user@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-decnet-user


--===============3547675358055014694==--

