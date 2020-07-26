Return-Path: <linux-decnet-user-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-decnet-user@lfdr.de
Delivered-To: lists+linux-decnet-user@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1524722DD3F
	for <lists+linux-decnet-user@lfdr.de>; Sun, 26 Jul 2020 10:30:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-decnet-user-bounces@lists.sourceforge.net>)
	id 1jzc39-0006zd-Ge; Sun, 26 Jul 2020 08:30:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>)
 id 1jzbN4-00061c-Bg; Sun, 26 Jul 2020 07:46:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/OYE8Kh5kREshesgyJBW+FlyuEi8kJEkZ/cCPrfQ51Y=; b=fmCTT06yEa9/hPGzp/jI6orNM5
 sCXB39IZ/8rHl6Utdsu5IHo0xJCRjl9kMbjehZOeRIPwEvKb6mECK2jZnJZiC+P7F1hSmbWifBEik
 IvWGknRnUe3VJxOhcEsRlBF83w8+hcqe4DcRzMrhmlfaQm4sm2vDwlRw21S6H8SxF3Gg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/OYE8Kh5kREshesgyJBW+FlyuEi8kJEkZ/cCPrfQ51Y=; b=F2yDDUtzECEm0KF7oJkzK4qVh4
 FYFhyHo0veTtp15lRYghXgDZaKe8YNCSlzLA8odKDYHz0QGb9SyWeNcPd5/DlQadus8K3oslcyTbQ
 fN3Hay69L8jUA7p1Azsf/eAaHNkKdfJnyXM3c/X4TZR6DJfJmdwxR4xI3Kd2Ewj5jcbU=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jzbN1-002wOG-9P; Sun, 26 Jul 2020 07:46:58 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::460])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9C3271277D61E;
 Sun, 26 Jul 2020 00:30:02 -0700 (PDT)
Date: Sun, 26 Jul 2020 00:46:44 -0700 (PDT)
Message-Id: <20200726.004644.71243023033363639.davem@davemloft.net>
To: hch@lst.de
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200726070311.GA16687@lst.de>
References: <20200723060908.50081-1-hch@lst.de>
 <20200724.154342.1433271593505001306.davem@davemloft.net>
 <20200726070311.GA16687@lst.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 26 Jul 2020 00:30:03 -0700 (PDT)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lst.de]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jzbN1-002wOG-9P
X-Mailman-Approved-At: Sun, 26 Jul 2020 08:30:26 +0000
Subject: Re: [Linux-decnet-user] get rid of the address_space override in
 setsockopt v2
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
Cc: ast@kernel.org, linux-sctp@vger.kernel.org, linux-afs@lists.infradead.org,
 linux-s390@vger.kernel.org, rds-devel@oss.oracle.com, daniel@iogearbox.net,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 lvs-devel@vger.kernel.org, coreteam@netfilter.org, mptcp@lists.01.org,
 kuznet@ms2.inr.ac.ru, linux-can@vger.kernel.org, kuba@kernel.org,
 linux-hams@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-x25@vger.kernel.org, edumazet@google.com, yoshfuji@linux-ipv6.org,
 netdev@vger.kernel.org, linux-decnet-user@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 bpf@vger.kernel.org, linux-wpan@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux-decnet-user-bounces@lists.sourceforge.net

From: Christoph Hellwig <hch@lst.de>
Date: Sun, 26 Jul 2020 09:03:11 +0200

> On Fri, Jul 24, 2020 at 03:43:42PM -0700, David Miller wrote:
>> > Changes since v1:
>> >  - check that users don't pass in kernel addresses
>> >  - more bpfilter cleanups
>> >  - cosmetic mptcp tweak
>> 
>> Series applied to net-next, I'm build testing and will push this out when
>> that is done.
> 
> The buildbot found one warning with the isdn debug code after a few
> days, here is what I think is the best fix:

I already fixed this in net-next.


_______________________________________________
Project Home Page: http://linux-decnet.wiki.sourceforge.net/

Linux-decnet-user mailing list
Linux-decnet-user@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-decnet-user

