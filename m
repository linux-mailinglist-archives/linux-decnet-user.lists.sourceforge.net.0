Return-Path: <linux-decnet-user-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-decnet-user@lfdr.de
Delivered-To: lists+linux-decnet-user@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB33227C47
	for <lists+linux-decnet-user@lfdr.de>; Tue, 21 Jul 2020 11:58:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-decnet-user-bounces@lists.sourceforge.net>)
	id 1jxp2V-0007j4-Ej; Tue, 21 Jul 2020 09:58:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>)
 id 1jxf59-00051N-Au; Mon, 20 Jul 2020 23:20:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mQD8MWlYZNbUlK7kLozL53JAaMSzj0Z+sh/jIq1O3ps=; b=iNIpZ2gQ/bBZTwsca8mL65wKeO
 b4tg1SrIRChD5uN14uASwdLaCf6ou//caE/aLzUzs2vcAAGbhjJkSEFbaqGFiNdG22aC0utta9Qzd
 Yw5y8A4Wpq1CvX52FvdXAAlXJKD1ZMmxV35dIhz0j7r4Chdo54i2uG3CsKnQTEDT6MwA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mQD8MWlYZNbUlK7kLozL53JAaMSzj0Z+sh/jIq1O3ps=; b=jkZ40+FN9jJL8X+BdiCkzSiUyw
 PF8jAWr/+SR/frze8LoxR7FWwmCSV2H/kbEO6MoAMEG6aoW/U4S9pfGkqmZiM/eRgspiUpGT/nbid
 CQ4hdT+a8Uyx6zyC34m39RYEooYS596KGQZQah5GzUOlZcrq6aA3sGud4pYeuMz1VWoU=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxf55-00BNuk-NB; Mon, 20 Jul 2020 23:20:27 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 0E8A811E8EC0A;
 Mon, 20 Jul 2020 16:20:16 -0700 (PDT)
Date: Mon, 20 Jul 2020 16:20:13 -0700 (PDT)
Message-Id: <20200720.162013.456211151711627380.davem@davemloft.net>
To: stefan@datenfreihafen.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <deaedc6d-edde-68da-50e8-6474ca818191@datenfreihafen.org>
References: <20200720124737.118617-1-hch@lst.de>
 <20200720124737.118617-25-hch@lst.de>
 <deaedc6d-edde-68da-50e8-6474ca818191@datenfreihafen.org>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 20 Jul 2020 16:20:17 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jxf55-00BNuk-NB
X-Mailman-Approved-At: Tue, 21 Jul 2020 09:58:21 +0000
Subject: Re: [Linux-decnet-user] [PATCH 24/24] net: pass a sockptr_t into
 ->setsockopt
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
Cc: ast@kernel.org, linux-sctp@vger.kernel.org, hch@lst.de,
 linux-s390@vger.kernel.org, rds-devel@oss.oracle.com, daniel@iogearbox.net,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-afs@lists.infradead.org, lvs-devel@vger.kernel.org,
 coreteam@netfilter.org, mptcp@lists.01.org, kuznet@ms2.inr.ac.ru,
 linux-can@vger.kernel.org, kuba@kernel.org, linux-hams@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-x25@vger.kernel.org,
 edumazet@google.com, yoshfuji@linux-ipv6.org, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org, linux-wpan@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-decnet-user-bounces@lists.sourceforge.net

From: Stefan Schmidt <stefan@datenfreihafen.org>
Date: Mon, 20 Jul 2020 16:19:38 +0200

> For the ieee802154 part:
> 
> Acked-by: Stefan Schmidt <stefan@datenfreihafen.org>

Please do not quote an entire patch just to add an ACK, trim it just
to the commit message, or even less.

Thank you.


_______________________________________________
Project Home Page: http://linux-decnet.wiki.sourceforge.net/

Linux-decnet-user mailing list
Linux-decnet-user@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-decnet-user

