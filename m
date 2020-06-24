Return-Path: <linux-decnet-user-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-decnet-user@lfdr.de
Delivered-To: lists+linux-decnet-user@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD44206A98
	for <lists+linux-decnet-user@lfdr.de>; Wed, 24 Jun 2020 05:28:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-decnet-user-bounces@lists.sourceforge.net>)
	id 1jnw4x-0005xI-JG; Wed, 24 Jun 2020 03:28:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jnw4w-0005x2-BX
 for linux-decnet-user@lists.sourceforge.net; Wed, 24 Jun 2020 03:28:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aya2dmcmp5ST1CF+gcZ6GEE/P2wWVjRvqf/lFPDK1Rc=; b=RnVjkEdXhaAofaEHBabXeM5sGV
 4mQv4fbkQBULgcNC+HUuhilBgD1LUlXJzAqm8ncm6gzsKVPhe1/j5APAcGAqkRB2O5gDF9F8f1gt+
 drdCsVkYlU3dsACa3wAQuzxHiUdi6o7fdRWHLP5bEhWUoOBsPIUV5sLLTCL2eGTkMwZU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aya2dmcmp5ST1CF+gcZ6GEE/P2wWVjRvqf/lFPDK1Rc=; b=BbOV51/bkrhiwB38v/AvkRKAao
 +wcSd/wygPdVG2b5yJI98ZAJkBRnKr/aks9f95szXucdRjy4+Bxc8Rc5t4Z0R3/TUxcISpmDDWARH
 SGtdbMO9NMNceMMwhoISk69DZ0qDlMYr1+efjLw43Exyd5+Lzj16BbNB4iWS6jhorePA=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jnw4u-00Dd0V-HH
 for linux-decnet-user@lists.sourceforge.net; Wed, 24 Jun 2020 03:28:02 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D8E7C1298630D;
 Tue, 23 Jun 2020 20:27:47 -0700 (PDT)
Date: Tue, 23 Jun 2020 20:27:47 -0700 (PDT)
Message-Id: <20200623.202747.548424486214848564.davem@davemloft.net>
To: gaurav1086@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200623034133.32589-1-gaurav1086@gmail.com>
References: <20200623034133.32589-1-gaurav1086@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 23 Jun 2020 20:27:48 -0700 (PDT)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jnw4u-00Dd0V-HH
Subject: Re: [Linux-decnet-user] [PATCH] [net/decnet] dn_route_rcv: remove
 redundant dev null check
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
Cc: gnault@redhat.com, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 David.Laight@ACULAB.COM, liuhangbin@gmail.com, dsahern@gmail.com,
 kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-decnet-user-bounces@lists.sourceforge.net

From: Gaurav Singh <gaurav1086@gmail.com>
Date: Mon, 22 Jun 2020 23:41:19 -0400

> dev cannot be NULL here since its already being accessed
> before. Remove the redundant null check.
> 
> Signed-off-by: Gaurav Singh <gaurav1086@gmail.com>

Applied.


_______________________________________________
Project Home Page: http://linux-decnet.wiki.sourceforge.net/

Linux-decnet-user mailing list
Linux-decnet-user@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-decnet-user

