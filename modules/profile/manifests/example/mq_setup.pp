class profile::example::mq_setup()
{
  #
  # Here is the definition of a Queue Manager with all possible properties.
  # Most of these are default. Use just the ones you need to be different from defaults
  #
  mq_manager { 'QM1':
    ensure   => 'present',
    # acctcono => 'DISABLED',
    # acctint  => '1800',
    # acctmqi  => 'OFF',
    # acctq    => 'OFF',
    # activrec => 'MSG',
    # actvcono => 'DISABLED',
    # actvtrc  => 'OFF',
    # authorev => 'DISABLED',
    # ccsid    => '1208',
    # certlabl => 'ibmwebspheremqqm1',
    # certvpol => 'ANY',
    # chad     => 'DISABLED',
    # chadev   => 'DISABLED',
    # chlauth  => 'ENABLED',
    # chlev    => 'DISABLED',
    # clwllen  => '100',
    # clwlmruc => '999999999',
    # clwluseq => 'LOCAL',
    # cmdev    => 'DISABLED',
    # configev => 'DISABLED',
    # connauth => 'SYSTEM.DEFAULT.AUTHINFO.IDPWOS',
    # defclxq  => 'SCTQ',
    # inhibtev => 'DISABLED',
    # ipaddrv  => 'IPV4',
    # localev  => 'DISABLED',
    # loggerev => 'DISABLED',
    # markint  => '5000',
    # maxhands => '256',
    # maxmsgl  => '4194304',
    # maxpropl => 'NOLIMIT',
    # maxumsgs => '10000',
    # monacls  => 'QMGR',
    # monchl   => 'OFF',
    # monq     => 'OFF',
    # perfmev  => 'DISABLED',
    # psclus   => 'ENABLED',
    # psmode   => 'ENABLED',
    # psnpmsg  => 'DISCARD',
    # psnpres  => 'NORMAL',
    # psrtycnt => '5',
    # pssyncpt => 'IFPER',
    # remoteev => 'DISABLED',
    # revdns   => 'ENABLED',
    # routerec => 'MSG',
    # schinit  => 'QMGR',
    # scmdserv => 'QMGR',
    # sslev    => 'DISABLED',
    # sslfips  => 'NO',
    # sslkeyr  => '/var/mqm/qmgrs/QM1/ssl/key',
    # sslrkeyc => '0',
    # statacls => 'QMGR',
    # statchl  => 'OFF',
    # statint  => '1800',
    # statmqi  => 'OFF',
    # statq    => 'OFF',
    # status   => 'running',
    # strstpev => 'ENABLED',
    # suiteb   => 'NONE',
    # treelife => '1800',
    # trigint  => '999999999',
  }

  #
  # Here is the definition of a Queue  with all possible properties.
  # Most of these are default. Use just the ones you need to be different from defaults
  #
  -> mq_queue { 'QM1/MY.QUEUE.FIRST':
    ensure   => 'present',
    # acctq    => 'QMGR',
    # bothresh => '0',
    # clwlprty => '0',
    # clwlrank => '0',
    # clwluseq => 'QMGR',
    # defbind  => 'OPEN',
    # defpresp => 'SYNC',
    # defprty  => '0',
    # defpsist => 'NO',
    # defreada => 'NO',
    # defsopt  => 'SHARED',
    # distl    => 'NO',
    # get      => 'ENABLED',
    # maxdepth => '5000',
    # maxmsgl  => '4194304',
    # monq     => 'QMGR',
    # msgdlvsq => 'PRIORITY',
    # npmclass => 'NORMAL',
    # propctl  => 'COMPAT',
    # put      => 'ENABLED',
    # qdepthhi => '80',
    # qdepthlo => '20',
    # qdphiev  => 'DISABLED',
    # qdploev  => 'DISABLED',
    # qdpmaxev => 'ENABLED',
    # qsvciev  => 'NONE',
    # qsvcint  => '999999999',
    # qtype    => 'QLOCAL',
    # retintvl => '999999999',
    # scope    => 'QMGR',
    # statq    => 'QMGR',
    # trigdpth => '1',
    # trigmpri => '0',
    # trigtype => 'FIRST',
    # usage    => 'NORMAL',
  }

  #
  # Here is the definition of a Channel  with all possible properties.
  # Most of these are default. Use just the ones you need to be different from defaults
  #
  mq_channel { 'QM1/MY.CHANNEL.FIRST':
    ensure  => 'present',
    chltype => 'SVRCONN',
    # comphdr  => 'NONE',
    # compmsg  => 'NONE',
    # discint  => '0',
    # hbint    => '300',
    # kaint    => 'AUTO',
    # maxinst  => '999999999',
    # maxinstc => '999999999',
    # maxmsgl  => '4194304',
    # monchl   => 'QMGR',
    # sharecnv => '10',
    # sslcauth => 'REQUIRED',
    # trptype  => 'TCP',
  }

  #
  # Here is the definition of a Topic  with all possible properties.
  # Most of these are default. Use just the ones you need to be different from defaults
  #
  mq_topic { 'QM1/MY.TOPIC.FIRST':
    ensure   => 'present',
    ttype    => 'LOCAL',
    topicstr => 'my_topic_str',
    # defpresp => 'ASPARENT',
    # defprty  => 'ASPARENT',
    # defpsist => 'ASPARENT',
    # dursub   => 'ASPARENT',
    # mcast    => 'ASPARENT',
    # npmsgdlv => 'ASPARENT',
    # pmsgdlv  => 'ASPARENT',
    # proxysub => 'FIRSTUSE',
    # pub      => 'ASPARENT',
    # pubscope => 'ASPARENT',
    # sub      => 'ASPARENT',
    # subscope => 'ASPARENT',
    # usedlq   => 'ASPARENT',
    # wildcard => 'PASSTHRU',
  }

}
