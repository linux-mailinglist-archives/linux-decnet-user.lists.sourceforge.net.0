Return-Path: <linux-decnet-user-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-decnet-user@lfdr.de
Delivered-To: lists+linux-decnet-user@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 184A8868B1
	for <lists+linux-decnet-user@lfdr.de>; Thu,  8 Aug 2019 20:21:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-decnet-user-bounces@lists.sourceforge.net>)
	id 1hvn2a-00067A-5e; Thu, 08 Aug 2019 18:21:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hvn2X-00066k-Uq
 for linux-decnet-user@lists.sourceforge.net; Thu, 08 Aug 2019 18:21:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UiyBqbHtul0riP+bm7Q/sDLQkeI4lcNegS8o68jBcnw=; b=Afq8oZKBsNy54JyriBr/71pGgA
 Dn1lp+Ii/SOiXNEs6w/VW6Xujx5ItdRiFg8rp1TbIMGM8er7rxCngbVsSr3KItFDv8LQztx+LbfY7
 SIdT7rfWgMoFn11eL4IZBcFZvFwPqhqiLcIOoXXe0B8lkjIowd/04uT49v0aYhPk0/XU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UiyBqbHtul0riP+bm7Q/sDLQkeI4lcNegS8o68jBcnw=; b=Nd/0pvxWFQ1bYISS9bqkkMKzte
 CGf5TwKDvdUWSxt5ePw57Aa4I+5FqKBqqRkTKm3SpM4FarU1wtg48XeZrgA4dJO0WjqNQXrEOKQ69
 +g6/EgfOG+UAZfznke1pGTjPWXPhtzkY31QV7hPec2hguxaulyKhoV09f7rA+aqi7+fA=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hvn2T-00Fc7r-3x
 for linux-decnet-user@lists.sourceforge.net; Thu, 08 Aug 2019 18:21:29 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1B02A154FAE91;
 Thu,  8 Aug 2019 11:21:16 -0700 (PDT)
Date: Thu, 08 Aug 2019 11:21:15 -0700 (PDT)
Message-Id: <20190808.112115.294506784370148268.davem@davemloft.net>
To: emserrat@hotmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <DM5PR22MB03797234267E8B37EA3080BBC4D70@DM5PR22MB0379.namprd22.prod.outlook.com>
References: <1555778581-21468-1-git-send-email-clabbe@baylibre.com>
 <20190421.112529.876668648990643427.davem@davemloft.net>
 <DM5PR22MB03797234267E8B37EA3080BBC4D70@DM5PR22MB0379.namprd22.prod.outlook.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 08 Aug 2019 11:21:16 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hvn2T-00Fc7r-3x
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
Cc: corbet@lwn.net, linux-doc@vger.kernel.org, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 clabbe@baylibre.com, tgraf@suug.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-decnet-user-bounces@lists.sourceforge.net

From: Eduardo Marcelo Serrat <emserrat@hotmail.com>
Date: Thu, 8 Aug 2019 11:44:14 +0000

> Sorry for using the list for this purpose but we are looking for
> senior engineers with knowledge in OpenVMS/ Tru64 Unix, Solaris,
> HP-UX and of course Linux and familiar with virtualization
> technologies, specially cross platform emulators. We need to fill
> support engineer roles. If anybody interested for positions in the
> US / Europe please send me an email.

Please do not ever use the vger.kernel.org mailing lists for this kind
of solicitation.

It is completely inappropriate.


_______________________________________________
Project Home Page: http://linux-decnet.wiki.sourceforge.net/

Linux-decnet-user mailing list
Linux-decnet-user@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-decnet-user

