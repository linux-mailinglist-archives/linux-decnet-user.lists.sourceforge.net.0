Return-Path: <linux-decnet-user-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-decnet-user@lfdr.de
Delivered-To: lists+linux-decnet-user@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9ED92244B2
	for <lists+linux-decnet-user@lfdr.de>; Fri, 17 Jul 2020 21:56:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-decnet-user-bounces@lists.sourceforge.net>)
	id 1jwWTJ-0003mI-JX; Fri, 17 Jul 2020 19:56:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jwWTI-0003mA-8J
 for linux-decnet-user@lists.sourceforge.net; Fri, 17 Jul 2020 19:56:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ub9NbEW8CKzwXZeXmeP7xHnIbU9JcZIIkJjyCsdQD2Y=; b=fxAR9uTSPW6vuYRxCAPIEiIKYE
 gWcgu3U5X+vZUwP9KUbQfHfQIJDjJD28u6KgLQ2mZPsVH6STv9Ad4j8eIVSlzeCXaOLQn+2ug4F3X
 s0E2CyPI46CL7YPlWIYAGWpNSYoejcoNsGse71ovijCVpbJcEYcx40uMTqhkKyxFHlnI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ub9NbEW8CKzwXZeXmeP7xHnIbU9JcZIIkJjyCsdQD2Y=; b=bjJPjlzAxsVg2UMLr7NigsqHkh
 kefE13CQ87lCLjt9JEGapJmWAC7dPDR96XnOfZsXyLwJwGAjq3FgJQZ5z3KtF6WQJQtNzsUEBeYy4
 L/KljBZW/hGhGfP7Hb/+9WqGwH2pkv6dDwHeNpFUL8taPWHZJU7iyHA7M/7mCi7wL+Lg=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jwWTG-00CahQ-VS
 for linux-decnet-user@lists.sourceforge.net; Fri, 17 Jul 2020 19:56:40 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E8C7011E4592D;
 Fri, 17 Jul 2020 12:56:21 -0700 (PDT)
Date: Fri, 17 Jul 2020 12:56:21 -0700 (PDT)
Message-Id: <20200717.125621.1899442297143438402.davem@davemloft.net>
To: usuraj35@gmail.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200716191645.GA4953@blackclown>
References: <20200716191645.GA4953@blackclown>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 17 Jul 2020 12:56:22 -0700 (PDT)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jwWTG-00CahQ-VS
Subject: Re: [Linux-decnet-user] [PATCH] net: decnet: af_decnet: Simplify
 goto loop.
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
Cc: kuba@kernel.org, linux-decnet-user@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-decnet-user-bounces@lists.sourceforge.net

From: Suraj Upadhyay <usuraj35@gmail.com>
Date: Fri, 17 Jul 2020 00:46:45 +0530

> Replace goto loop with while loop.
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>

Applied to net-next.


_______________________________________________
Project Home Page: http://linux-decnet.wiki.sourceforge.net/

Linux-decnet-user mailing list
Linux-decnet-user@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-decnet-user

