Return-Path: <linux-decnet-user-bounces@lists.sourceforge.net>
X-Original-To: lists+linux-decnet-user@lfdr.de
Delivered-To: lists+linux-decnet-user@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FDA22D98D
	for <lists+linux-decnet-user@lfdr.de>; Sat, 25 Jul 2020 21:19:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux-decnet-user-bounces@lists.sourceforge.net>)
	id 1jzPh7-0004IR-2a; Sat, 25 Jul 2020 19:18:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>)
 id 1jz6Py-00060P-6r; Fri, 24 Jul 2020 22:43:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oj4YRdJi8KtdeHj9KfkmKfCxKdhH+btJUkqFKWf4b4s=; b=EL3rLnNgpplVlZwNM6XSO2sxJR
 0QYCeY/pKFV365CNqxYfk5ulRjxO1qdewaGsV/JiQ/0nG7v+u/7Bj/REt257Q074xBNtTqSq3w8+Z
 bbPfDbGAq0/SJtJFQSDZf2yO1SI1/xH+RtqinkZuBAZFwolMTwWkK6nhmEaP2VX93MzM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Oj4YRdJi8KtdeHj9KfkmKfCxKdhH+btJUkqFKWf4b4s=; b=S0Kx63FNWbRSnK8v6A8dNQJJOF
 BodVCuRXZaMH1fI2BQYy2F+c+lTx+AfyvjH5b76bYpUkhD8RTWfOQ8BayFAQF1HwTJ/qKueZCBqex
 db/4sHwMnBzIetYPW+WmNPK7p+bb8Mhw/8BnDCrFy8gvnUSOo0fH766jWILWLPu5KNfc=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jz6Pv-001odF-4v; Fri, 24 Jul 2020 22:43:54 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7C0081274F734;
 Fri, 24 Jul 2020 15:26:58 -0700 (PDT)
Date: Fri, 24 Jul 2020 15:43:42 -0700 (PDT)
Message-Id: <20200724.154342.1433271593505001306.davem@davemloft.net>
To: hch@lst.de
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200723060908.50081-1-hch@lst.de>
References: <20200723060908.50081-1-hch@lst.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 24 Jul 2020 15:26:59 -0700 (PDT)
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
X-Headers-End: 1jz6Pv-001odF-4v
X-Mailman-Approved-At: Sat, 25 Jul 2020 19:18:51 +0000
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
Date: Thu, 23 Jul 2020 08:08:42 +0200

> setsockopt is the last place in architecture-independ code that still
> uses set_fs to force the uaccess routines to operate on kernel pointers.
> 
> This series adds a new sockptr_t type that can contained either a kernel
> or user pointer, and which has accessors that do the right thing, and
> then uses it for setsockopt, starting by refactoring some low-level
> helpers and moving them over to it before finally doing the main
> setsockopt method.
> 
> Note that apparently the eBPF selftests do not even cover this path, so
> the series has been tested with a testing patch that always copies the
> data first and passes a kernel pointer.  This is something that works for
> most common sockopts (and is something that the ePBF support relies on),
> but unfortunately in various corner cases we either don't use the passed
> in length, or in one case actually copy data back from setsockopt, or in
> case of bpfilter straight out do not work with kernel pointers at all.
> 
> Against net-next/master.
> 
> Changes since v1:
>  - check that users don't pass in kernel addresses
>  - more bpfilter cleanups
>  - cosmetic mptcp tweak

Series applied to net-next, I'm build testing and will push this out when
that is done.

Thanks.


_______________________________________________
Project Home Page: http://linux-decnet.wiki.sourceforge.net/

Linux-decnet-user mailing list
Linux-decnet-user@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux-decnet-user

