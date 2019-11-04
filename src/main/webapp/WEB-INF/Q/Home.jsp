<%--
  Created by IntelliJ IDEA.
  User: shuoshuo
  Date: 2019/4/9
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>

<script type="text/javascript"
        src="${APP_PATH }/static/js/jquery-3.3.1.min.js"></script>
<link
        href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
        rel="stylesheet">
<script
        src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <html lang="zh-CN">
    <head>
        <meta name="baidu_union_verify" content="328beac64c85e5199b108ec7e08c584f">

        <meta name="renderer" content="webkit">
        <meta charset="UTF-8" />
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
        <title>猪猪日部落 - 日剧综合站</title>
        <link rel="profile" href="http://gmpg.org/xfn/11" />
        <link rel='dns-prefetch' href='//s.w.org' />
        <link rel="alternate" type="application/rss+xml" title="猪猪日部落 &raquo; Feed" href="http://www.zzrbl.com/wordpress/?feed=rss2" />
        <link rel="alternate" type="application/rss+xml" title="猪猪日部落 &raquo; 评论Feed" href="http://www.zzrbl.com/wordpress/?feed=comments-rss2" />
        <script type="text/javascript">
            window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.3\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/www.zzrbl.com\/wordpress\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.8.9"}};
            !function(a,b,c){function d(a){var b,c,d,e,f=String.fromCharCode;if(!k||!k.fillText)return!1;switch(k.clearRect(0,0,j.width,j.height),k.textBaseline="top",k.font="600 32px Arial",a){case"flag":return k.fillText(f(55356,56826,55356,56819),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,56826,8203,55356,56819),0,0),c=j.toDataURL(),b!==c&&(k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447),0,0),c=j.toDataURL(),b!==c);case"emoji4":return k.fillText(f(55358,56794,8205,9794,65039),0,0),d=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55358,56794,8203,9794,65039),0,0),e=j.toDataURL(),d!==e}return!1}function e(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i,j=b.createElement("canvas"),k=j.getContext&&j.getContext("2d");for(i=Array("flag","emoji4"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
        </script>
        <style type="text/css">
            img.wp-smiley,
            img.emoji {
                display: inline !important;
                border: none !important;
                box-shadow: none !important;
                height: 1em !important;
                width: 1em !important;
                margin: 0 .07em !important;
                vertical-align: -0.1em !important;
                background: none !important;
                padding: 0 !important;
            }
        </style>
        <link rel='stylesheet' id='wp-postratings-css'  href='http://www.zzrbl.com/wordpress/wp-content/plugins/wp-postratings/css/postratings-css.css?ver=1.85' type='text/css' media='all' />
        <link rel='stylesheet' id='jeffdesign-style-css'  href='http://www.zzrbl.com/wordpress/wp-content/themes/zzrbl/style.css?ver=20170525' type='text/css' media='all' />
        <link rel='stylesheet' id='jeffdesign-carousel-css'  href='http://www.zzrbl.com/wordpress/wp-content/themes/zzrbl/js/owl.carousel.css?ver=20170318' type='text/css' media='all' />
        <script type='text/javascript' src='http://www.zzrbl.com/wordpress/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
        <script type='text/javascript' src='http://www.zzrbl.com/wordpress/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
        <link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://www.zzrbl.com/wordpress/xmlrpc.php?rsd" />
        <style type="text/css">
            .bg_w{background: #ffffff;}
            .bg_g{background: #F5F5F5;}
        </style>
    </head>
<body class="home blog jeffdesign">
<section class="header clear">
    <div class="wrapper">
        <header>
            <a href="http://www.zzrbl.com/wordpress" title="猪猪日部落 - 日剧综合站" id="logo"><img src="http://www.zzrbl.com/wordpress/wp-content/themes/zzrbl/images/logo.png" alt="猪猪日部落" /></a>
            <ul id="menunav" class="menunav"><li id="menu-item-11" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item menu-item-11"><a href="http://www.zzrbl.com">首页</a></li>
                <li id="menu-item-9" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-9"><a href="http://www.zzrbl.com/wordpress/?cat=11">热门日剧</a></li>
                <li id="menu-item-10" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-10"><a href="http://www.zzrbl.com/wordpress/?cat=12">热门日影</a></li>
                <li id="menu-item-4721" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-4721"><a href="http://www.zzrbl.com/wordpress/?cat=32">其他作品</a></li>
                <li id="menu-item-8" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-8"><a href="http://www.zzrbl.com/wordpress/?cat=10">小视频</a></li>
                <li id="menu-item-1745" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1745"><a href="http://www.zzrbl.com/wordpress/?cat=14">最新资讯</a></li>
                <li id="menu-item-38" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-38"><a href="http://www.zzrbl.com/wordpress/?cat=13">讨论区</a></li>
            </ul><div class="menuright"><form method="get" id="searchform" action="/">
            <input type="text" name="s" value="" id="s" placeholder="搜索 &hellip;" />
            <input type="submit" id="searchsubmit" value="" />
        </form>
            <div class="login"><a href="http://www.zzrbl.com/wordpress/wp-login.php?redirect_to=http%3A%2F%2Fwww.zzrbl.com%2Fwordpress" title="登录">登录</a> <a href="http://www.zzrbl.com/wordpress/wp-login.php?action=register" title="注册">注册</a></div></div>
        </header>
    </div>
</section>
<marquee class="notice" scrollAmount=3 direction=left>
    <a href="">有问题或建议请发邮件至feedback@zzrbl.com</a></marquee><div id="owl-slider" class="owl-carousel owl-theme">
    <div class="item"><a href="http://www.zzrbl.com/wordpress/?p=9381"><img src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/2019winterbanner4-1.jpg" /></a></div>    <div class="item"><a href="http://www.zzrbl.com/wordpress/?p=9363"><img src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/2019winterbanner3-1.jpg" /></a></div>    <div class="item"><a href="http://www.zzrbl.com/wordpress/?p=9282"><img src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/2019winterbanner1-1.jpg" /></a></div>    <div class="item"><a href="http://www.zzrbl.com/wordpress/?p=9361"><img src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/2019winterbanner2-1.jpg" /></a></div>    <div class="item"><a href="http://www.zzrbl.com/wordpress/?p=9383"><img src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/2019winterbanner5.jpg" /></a></div></div>
<section class="calendar bg_w clear">
    <div class="wrapper">
        <div class="section_head">
            <div class="left">播出时间表<span>放送スケジュール</span></div>
            <div class="right" id="captionscroll"><ul>
                <li>俺はハッカーでもクラッカーでもない ただのプログラマーだ<br />我不是黑客也不是咸饼干 只是个程序员而已​​​​——人生删除事务所</li>
                <li>確かに人って 何人もの自分を持ってるものね<br />人啊 确实都是多重复杂的 ​​​​​​​​——人生删除事务所</li>
                <li>人間の心なんて一瞬でかわる <br />人心就是这么阴晴不定——人生删除事务所</li>
                <li>一瞬で変わるものは長続きしないよ<br />瞬间变化的东西不会长久——人生删除事务所</li>
                <li>裁判は真実を追求する場所じゃない<br />法庭并非追求真相的地方​​​​——人生删除事务所</li>
                <li>記録は消さなきゃ消えないが記憶はほっとけば薄れる<br />记录留着就不会消失 记忆放着就逐渐变淡​​​​——人生删除事务所</li>
                <li>男をティッシュみたいに鼻かんでぽい<br />抛弃男人吗 就跟纸巾似的 擤完鼻涕就扔 ​​​​——高岭之花</li>
                <li>自分がされて嫌なことはしない 愛してるから<br />己所不欲勿施于人 因为爱 ​​​​——高岭之花</li>
                <li>この世に汚れを知らぬものに この世の美しさがわかるはずもない<br />不知世上污秽之人是无法理解世上的美为何物的​​​​——高岭之花</li>
                <li>泣きたかったり 悔しかったりの先に夢がある<br />哭泣 悔恨的远方有梦想​​​​——啦啦队之舞</li>
                <li>やりたいことやった方が 結局は楽しいやろう<br />做自己想做的事情很开心吧——啦啦队之舞</li>
                <li>どうせ裏切られるんやったら　最初から信じんどけば良い<br />反正到头来都会被背叛　还不如从一开始就不要给予信任​​​——啦啦队之舞</li>
                <li>あなたは自分のちっちゃなプライドと楽しみに待っている人達を喜ばせることとどっちが大事なの<br />你那微不足道的自尊心和让期待已久的观众们高兴地看表演　哪边比较重要呢——啦啦队之舞</li>
                <li>分からんよ 頭と心は別やで ダメって分かってても好きになってまうのが恋なんやよ<br />这可说不准 大脑和心是不一样的 就算知道不可以还是会喜欢 这就是恋爱啊——啦啦队之舞</li>
                <li>カマトトぶって恋に不器用ぶってても王子様は迎えに来てくれないんやよ<br />你一直装傻充愣说自己不懂恋爱 这样子王子是不会来接你的哦</li>
                <li>傷ついたことも 血を流したこともない子供が 上手に歌ってほめられただけ<br />不过是没见过大风大浪的孩子 因为歌唱得不错而被表扬了罢了——双重幻想</li>
                <li>ただ音符を並べただけじゃ 音楽にならないのと同じで 自分の体験や思いを並べてみても 残念ながら作品には ならない<br />这和音乐一样 只是把音符摆到一起是不会变成音乐的 就算把自己的体验和感情写下来 很遗憾那也不是部作品 ​​​​——双重幻想</li>


                <li>確かに渡海先生の腕は患者を活かす だが 医者を殺す<br />渡海医生的技术确实能让病人活下来 但是 那会杀死医生——黑色止血钳</li>
                <li>腕のいい医者は 何をやっても許されるんだよ<br />本事大的医生 干什么都行——黑色止血钳</li>
                <li> 一億な 払い終えるまで お前は俺のために一生ここで働け<br />一亿日元 直到付清为止 你就给我在这里工作一辈子——黑色止血钳</li>
                <li>手術は博打ですよ 結局ね 二つに一つなんですよ 表か裏か 生きるか死ぬか<br />手术就是赌博 结局无非是二者其一 正或反  生或死——黑色止血钳</li>
                <li>誰かの失敗は 誰かの成功になる<br />某个人的失败就是某个人的成功——黑色止血钳</li>
                <li>一人も殺してない 君が外科医を辞めるのか それはあまりにも無責任じゃないか<br />未曾害死一人就要放弃做外科医生了吗 这也太不负责任了吧——黑色止血钳</li>
                <li>腕のいい医者は何をやっても許されるの 腕のない医者は 死んだらいい<br /> 医术精湛的医生做什么都会被原谅 医术不精的医生死不足惜——黑色止血钳</li>
                <li>泣くぐらい怖いんだったら異動とか甘っ ちょろいこと言ってないでもう辞めろう 邪魔だ <br />要是害怕得想哭的话 就别说调动之类的蠢话 赶紧放弃算了 碍事——黑色止血钳</li>
                <li>いくら医療が発展しても そこに人が 関わる以上 ミスというものは必ず起こりえる<br />无论医疗水平如何进步，只要有人参与，就一定会出现失误——黑色止血钳</li>
                <li>夫婦なんて結局他人なんだし、壊れる時はあっという間だよ<br />夫妇说到底也就是外人，关系崩了也就是一转眼的功夫——有家可归的恋人们 </li>
                <li>女に一体いくつのやくわり押し付けるんだ できるもんなら そっちがやってみろう<br />究竟要让女人扮演多少角色 你行你上啊 ​​​​——有家可归的恋人们 </li>
                <li>誰だって愛されたいし 癒しがほしいでしょう<br /> 谁都想要被爱 找个温柔乡 不是吗​​​​——有家可归的恋人们 </li>
                <li>昔のまんま 中途半端な優しさはやめてください<br />你还和以前一样 请不要再给我这种暧昧不清的温柔——基督山伯爵~华丽的复仇~</li>
                <li>本当の不幸って何だか知ってるか 壊すんだよ 大切なものを すべて<br />知道什么才是真正的不幸吗 就是毁掉他所珍视的一切——基督山伯爵~华丽的复仇~</li>
                <li>正しき五人なんて名前名乗る資格 あなたにはない<br /> 你没有自称正义五人组的资格——花过天晴</li>
                <li>本当しょうもない人<br />你真没种——花过天晴 </li>
                <li>大切なものを守るためには強くなるんだ<br /> 为了能保护自己重要的东西，要变得强大起来——花过天晴</li>
                <li>怪我したくなかったらさっさと帰れ<br />如果不想挨打的话就赶紧滚回去——花过天晴</li>
                <li>汚え手で触るなって言ってるんです<br />我在说不许用你们的脏手碰她们——花过天晴</li>
                <li>もう二度と誰には種もないなんて言わせねえ<br />我不要再被别人说没种了——花过天晴</li>
                <li>隠れ庶民め あの女がいる限り俺の天下はない<br /> 可恶的庶民 只要那个女人在一天 就没有我的天下——花过天晴</li>
                <li>許さねえ 庶民の分際で俺を脅すなんて<br /> 我决不允许 一个区区庶民竟敢威胁我——花过天晴</li>
                <li>惚れた男のこと、脅す女はいないだろう？<br /> 没有女人会威胁自己喜欢的男人吧。——花过天晴</li>
                <li>無意識な行動は恐ろしく正直です<br /> 无意识的行动恐怕才是真情流露——信号：长期未解决案件搜查班</li>
                <li>難しい事件ほどやり甲斐があるでしょう<br />案子越难越有查的价值——信号：长期未解决案件搜查班</li>
                <li>警察はどっちの味方なんだよ<br /> 警察到底站在谁那边啊——信号：长期未解决案件搜查班</li>
                <li>もし過去と通信できたら大切な人を守ってって頼む<br />如果能和过去通话 我想拜托自己去守护重要的人——信号：长期未解决案件搜查班</li>
                <li>何もしないで後悔するよりやった後悔するほうがましよ<br />比起什么都不做然后再后悔 我宁愿努力做了再后悔——信号：长期未解决案件搜查班</li>
                <li>分からなくはないけど 起訴するかどうかは証拠があるかないかがすべてだから<br />也不是不能理解 但是毕竟能不能起诉全看有没有证据啊——正义检事</li>
                <li>事件を一つ解決したらって一人前の検事になったと勘違いするな<br />你别以为解决了一个案件就能成为独当一面的检察官——正义检事</li>
                <li>罪の意識のない嘘を暴くのは大変 なんだ<br />戳穿无犯罪意识的谎言是很难的——正义检事</li>
                <li>ダメな検事ほど一つ一つの事件に感情移入をして いちいち落ち込んだり舞い上がったりする<br /> 越是不够格的检察官越是会把感情代入进每个案件中 一会儿因案件失落 一会儿因案件兴奋——正义检事</li>


                <li>「私は不破さんにとって、何番目の女？」「女に順番はつけられない」<br />"对你而言 我是排第几位的女人呢" " 女人可不能排序"——现在开始威胁你 </li>
                <li>君に興味があってやってるわけじゃない。事実を知りたいだけだから。<br />我对你可没什么兴趣，我只想知道真相。——99.9刑事专业律师</li>
                <li>身長を測る時は、慎重にね。<br />测身高的时候要慎重啊——99.9刑事专业律师</li>
                <li>この私が弁護人となったからには、無実の者に罪をきせるなど、99.99％許さない。<br />作为辩护律师，让无辜者蒙冤获罪，我99.99%不允许。——99.9刑事专业律师</li>
                <li>事実はどうでもいい。大事なのは法廷で勝つか負けるかです。失礼。<br />真相怎么样都无所谓，重要的是法庭上的输赢。告辞。——99.9刑事专业律师</li>
                <li>事実は一つですから<br />真相只有一个——99.9刑事专业律师</li>
                <li>何もしてない奴と握手する気はない<br />我不和不出力的家伙握手——99.9刑事专业律师</li>
                <li>裁判所はどうして無実の人間を守ろうとしてくれないですか<br />法院为什么不保护无罪的人——99.9刑事专业律师</li>
                <li>あんまり女を泣かせると キスで殺されるわよ<br />如果让女人流太多眼泪的话 是会被吻杀的哦 ——致命之吻</li>
                <li>愛なんか求めようとするから人は不幸になる<br />人因为想要追求爱 所以才会变得不幸——致命之吻</li>
                <li>愛なんか捨ててしまえば いくらでも幸せになれる<br />只要舍弃了爱 我想要多幸福就能有多幸福——致命之吻</li>
                <li>何か愛だよ そんなもんに縛られるから人は不幸になるんだ<br />什么是爱 就是因为被这种东西束缚 人才会不幸——致命之吻</li>
                <li>あなたのような人に妹を渡すわけにはいきません<br />我不会把妹妹交给你这样的人的——致命之吻</li>
                <li>もう嘘を付くのはやめなよ 自分の気持ちに嘘ついたって虚しくなるだけじゃない<br />别再撒谎了 欺骗自己只会更空虚吧——致命之吻</li>
                <li> 分からない 分からないから知りたいんだ。君のことを<br />什么都不知道 就是因为什么都不知道我才想更多的了解你——致命之吻</li>
                <li>俺が望んた時にキスしてくれたら 宰子の願えを一つかなえてやる<br /> 只要你在我需要的时候给我吻 我就满足你一个愿望——致命之吻</li>
                <li> 「人生は金がすべてじゃないよ。」「ははっ、それは金持ちの言うセリフだよ。」<br />“钱又不是人生的全部”“这是有钱人的台词 ”——致命之吻</li>
                <li>陰で支える人生なんてうんざりだ これからは好きにさせてもらう<br />我已经厌烦了在背后付出的人生 以后我会按照自己的想法来——致命之吻</li>
                <li>俺は酒には溺れても女には溺れたことは一度も無いよ<br />要说酒我也许醉过几次，可是要说女人 我可从来没爱上过任何人——致命之吻</li>
                <li>感情を持たないからキスが武器になるんだ<br />就因为不带任何感情 所以吻才能成为我的武器——致命之吻</li>
                <li>人の弱みにつけこんで 利用したあげく裏切った奴一番のクズだと俺は思うよ<br />趁人之危 利用别人 最后还背叛别人的人在我看来最人渣——致命之吻</li>
                <li>目に見える金とか地位にしか興味ないお前に 俺の気持ちはわからないよ<br />你这种眼里只有钱和地位的人 是不会明白我的心情的——致命之吻</li>
                <li>美尊の幸せを奪おうとする奴は僕が許さない<br />我不会放过想抢走美尊幸福的人——致命之吻</li>
                <li>こんなもんで罪悪感から逃げられると思うなよ 一生使え倒してやる<br />你别想就这样逃避掉罪恶感 我会使唤到你死——致命之吻</li>
                <li>人間そう簡単に変わりゃしねえよ<br />人的本性是不会那么轻易改变的——致命之吻</li>
                <li>宰子を愛してる あいついない人生が辛くてたまらないんだ<br />我爱宰子 没有他的人生 真的是太痛苦了——致命之吻</li>
                <li>僕は本当に幸せにしたいのは宰子なんだ<br />我真正想给予幸福的人是宰子啊 ——致命之吻</li>
                <li>未然に危機を防ぐのが我々の仕事です<br />防患于未然是我们的工作——BG~贴身警卫</li>
                <li>いい年した男同士が話もないのに 酒飲みませんよね<br />一把年纪的两个老男人 没话说要喝什么酒啊——BG~贴身警卫</li>
                <li>人間だから感情がありますよね<br />人是有感情的吧——BG~贴身警卫</li>
                <li>命令に盲目に従う その先には危険しかない<br />盲目听从于命令 这只会置身于危险——BG~贴身警卫</li>
                <li>武器なんかないほうが強くなれるってそう言っただけです<br />我的意思是 没有武器才能变得更强——BG~贴身警卫</li>
                <li>女の嘘は見抜くのが難しいですからね<br />女人心海底针——BG~贴身警卫</li>
                <li>日本は皆が思っているほど平和ではありません<br />日本没有人们想像的那么太平——BG~贴身警卫</li>
                <li>リスクのない仕事なんてないでしょう<br />没有一份工作是不存在风险的——BG~贴身警卫</li>
                <li>まもって、あたしを。 <br />保护我吧。——BG~贴身警卫</li>
                <li>怖がってる女をまもれなくて何がプロですか<br />连担惊受怕的女人都不能保护 还算什么专家——BG~贴身警卫</li>
                <li>完璧な準備をしてから任務に赴く それが俺達ボディーガードの流儀だ<br />准备妥当后才进行任务 这才是我们保镖的作风吧——BG~贴身警卫</li>
                <li>いつ死んでもいいようにっていうのはなし 俺死なないから<br />不存在“哪天死了”这种情况 我不会死的——BG~贴身警卫</li>
                <li>謝るのは本当に心から頭を下げられる時だけでいいんです<br />真心认识到错误时再道歉也不迟——BG~贴身警卫</li>
                <li>女に振り回されるのも男の役目なの<br />绕着女人转也是男人的任务——BG~贴身警卫</li>
                <li>法医学は未来のための仕事 <br />法医学是为了未来的工作——unnatural<li>
                <li>寝顔を愛しいと思える 人を愛しなさい<br />去爱那个连睡相都能让你心动的人——unnatural<li>
                <li>そのクソみてえな提案いつまで続くんだ？<br />你这种狗屁建议能不能消停一会儿？——unnatural<li>
                <li>バカの相手にする奴のもバカだな<br />跟蠢货说话的也是蠢货 ——unnatural<li>
                <li>絶望してる暇があったら うまいものを食べて寝るかな<br />要是有绝望的功夫还不如吃好睡好呢——unnatural<li>
                <li>人なんてどいつもこいつも切り開いて皮を剥げばただの肉の塊だ  死ねば分かる<br />只要是人 无论是谁切开来剥了皮就只是块肉罢了 等你死了就知道了——unnatural<li>
                <li>法医学者は人殺しの方法を知り尽くしたプロですからね<br />法医是对杀人手法无所不知的专家呢——unnatural<li>
                <li>いつまでも逃げおおせると思うなよ<br />别以为你每次都逃得掉——unnatural<li>
                <li>共感は恋の第一歩<br />同感是迈入恋情的第一步——unnatural<li>
                <li>どんなに酔ってても、好みじゃない男に走ったりしないでしょう<br />再怎么喝醉也不会和不喜欢的人开车啊 ——unnatural<li>
                <li>合意のない性行為は犯罪です<br />双方未达成共识就进行性行为是犯罪——unnatural<li>
                <li> ゆっくり苦しみながら 死んで行け<br />你就慢慢地 痛苦地死去吧——unnatural<li>
                <li>職員一人に背負わせて、知らぬ存ぜぬはできません<br />我不能袖手旁观 让下属一个人独自承受——unnatural<li>
                <li>人を助けるのが正義とは限らないし 人を殺すのが、すべて悪とも限らない <br />救人未必是正义 杀人也未必是罪恶——暗之伴走者<li>
                <li>漫画には無限なの可能性がある 漫画が時代を作る<br />漫画有无限的可能性 漫画能引领时代 ——暗之伴走者2<li>
                <li>編集長にはな そこに立つ人間しか見えない風景があるんだよ<br />主编啊能看到其他人看不到的风景  ——暗之伴走者2<li>
                <li>「私はただ真相が知りたいだけです」「俺には部下を守る責任がある」<br />“我只是想知道真相”“我有责任保护部下 ”——暗之伴走者2<li>
                <li>言いたいことが言えない関係なんて 悪くなるっていう もう終わってるぜ<br />有话却不能说的关系 与其说是恶劣 实则已经结束了吧——暗之伴走者2<li>
                <li>人は出会いと別れの生き物だ 別れることを恐れちゃいけない<br />人啊 就是有聚有散的生物 我们不能害怕分别——暗之伴走者2<li>
                <li>漫画の存在意義は強気をくじいて 弱気を助けることです<br />漫画的存在意义就是锄强扶弱——暗之伴走者2<li>


                <li>「聞くけどよ、お前生きてて楽しいか？」「どうせ寂しい人生ですよ。」<br/>“我要问问，你活着有乐趣吗？ ”“怎么看都知道是寂寞的人生啊。”——震撼鲜师</li>
                <li>オレは誰かにひかれるのは抱きたいだけじゃない  <br/>我倾心于一个人时绝不是因为她的身体 ——Love Shuffle</li>
                <li>小さいときみんなピンク色がだいすきなんだ 女はみんなメルヘンだから  <br/>从小就喜欢粉色的女孩子 她们每个人都是一部童话 ——Love Shuffle</li>
                <li>いじめは決してはなくならない！<br/>欺凌问题绝对不会消失！——SCHOOL!</li>
                <li>それに比べて校長先生の食事は寂しいね<br />相比之下 校长吃的不是饭是寂寞啊 ——SCHOOL!</li>
                <li>教師はいじめを見て見ぬふりをするべきじゃない<br />教师不应该对欺凌弱小视而不见 ——SCHOOL!</li>
                <li>突然の方が人生楽しいだろう <br />来点惊喜人生不是会更快乐吗 ——SCHOOL!</li>
                <li>悪意は人の心を蝕む でも 最後の最後に人を追い詰めるのは無知で無邪気の善意だ<br />恶意会吞噬人心 但是最终把人逼入绝境的是无知幼稚的善意 ——SCHOOL!</li>
                <li>あんまり臆病風にふかれると 大事なものを見失ってしまうぞ<br />如果一味被懦弱绑住了手脚 就会失去重要的东西哦 ——震撼鲜师</li>
                <li>でもほしいものあるっていうのは生きている証拠だよ<br />不过人有所欲就是活着的证据 ——Q10</li>
                <li>不安な夜は嫌いだ <br />我讨厌不安的夜晚 ——Q10</li>
                <li>人生って無駄なことなんて一つもないぞ<br />人生没有哪样事情是白做的——重版出来</li>
                <li>無理なんて誰が決めたんですか？<br />谁跟你说不行的? ——重版出来</li>
                <li>僕には僕で 他人にはなれませんから <br />我就是我 没办法成为别人 ——重版出来</li>
                <li>現実なんていらなかった ただマンガの中だけで生きていたかった <br /> 不需要什么所谓的现实 我只是想活在漫画里 ——重版出来</li>
                <li>世界には星の数ほど店はあるのに 彼女は俺の店にやってきた<br />世界上有那么多酒吧 可她偏偏走进了我的这一家 ——成熟女子</li>
                <li>でも、人生の中に裏切られる心配のない確かなものなんてあるのかなぁ？<br />不过人生中究竟有没有确定不会遭到背叛的东西呢？ ——成熟女子</li>
                <li>女はいつんの時代も男に押されるのを待ってるみたいですね ？<br />看来不管时代怎么办 女人都在等着被男人推到啊 ——成熟女子</li>
                <li>人生には謎があったほうが楽しい<br />人生还是留点谜团比较开心 ——成熟女子</li>
                <li>女は言い訳を用意して欲しい 相手の情熱で押し切られたといういい訳を <br />人都希望对方给自己一个好借口 像是被对方的热情打败这种借口 ——成熟女子</li>
                <li>自分の夢確かめねえでどうすんだよ？<br />自己的梦想 不去试一下怎么行啊？ ——夜野老师</li>
                <li>愛は困難な状況ほど燃え上がるの<br />爱情就是越得不到的越想要 ——玻璃之家</li>
                <li>ありえない事が起きるのが人生なの<br />人生无常 世事难料 ——玻璃之家</li>
                <li>愛情はあたえるもんじゃないよ 分かち合うもんだろう<br />爱情不是施舍 是互相分担 ——玻璃之家</li>
                <li>悲しいときはいつも月がきれい<br />悲伤的时候月亮总是很美 ——玻璃之家</li>
                <li>誰の人生も後戻りすることはできない<br />人生没有回头路 ——玻璃之家</li>
                <li>最初から燃え上がる恋なんてすぐに消えちまうんだよ<br />一开始打得火热的爱情消失得很快的 ——Summer Nude</li>
                <li>小さい火種がじわじわっと燃えていく恋こそ本物なんだよ<br />一开始小火慢慢着的才是真爱 ——Summer Nude</li>
                <li>人の命を救うのに許可が必要なんですか？<br />抢救人的生命还需要许可吗？ ——最强名医</li>
                <li>ドクターのプライドは山よりも高く 海よりも深い<br />医生的自尊比山高比海深 ——最强名医</li>
                <li>人間っていうのはそう簡単に変われないってことさ?<br />人是无法这么轻易就改变的。——最强名医</li>
                <li>しかし 僕に言わせれば現象には 必ず 理由がある?<br />但是依我之见，凡事皆有因。——神探伽利略2</li>
                <li>信じることから始まるのが宗教なら疑うことから始めるのが科学です<br />如果说宗教始于信，那么科学就始于疑。——神探伽利略2</li>
                <li>コインに裏表があるように科学にも功罪両面があるんじゃないでしょうか <br />就像硬币有正反两面一样 科学也有功过两面 ——神探伽利略2</li>
                <li>さっぱり分からない <br />完全搞不懂 ——神探伽利略2</li>
                <li>現象には必ず理由がある? <br />凡事皆有因 ——神探伽利略2</li>
                <li>本当に危険なのは理性を失った人間じゃない?理性以外の感情 全てを失った 人間だ? <br />真正危险的不是失去理智的人，是失去了除理性外全部感情的人。 ——神探伽利略2</li>
                <li>やる気に価値はない。<br />光有干劲没有任何用处——卧底侦探</li>
                <li>君が逃げても真実は変わらない <br />就算你逃避 真相也不会改变 ——卧底侦探</li>
                <li>嘘で人は守れない<br />谎言保护不了人 ——卧底侦探</li>
                <li>せっかく生きてる大切な時間だもっと大事に使えよ<br />我们活着的时间那么珍贵 还是用在更有意义的事情上吧 ——卧底侦探</li>
                <li>答えが欲しいわけじゃない 話を聞いてくれるだけでいい<br />我并不是想让你给我答案 只要听我吐吐心声就可以 ——晚开的向日葵</li>
                <li>自分の道を開こうと思えばできないことはないと思います <br />如果自己想开辟一条道路 就没有做不到的事 ——晚开的向日葵</li>
                <li>夢は俺のもんなんだからさ<br />反正梦想是我的 ——晚开的向日葵</li>
                <li>無理するな お前のかわりにはいくらでもいるんだ<br />别逞强了 反正少你一个不少 ——MONSTERS</li>
                <li>好きなだけでつづけられるわけじゃない<br />并不是喜欢就能坚持的 ——不结婚</li>
                <li>誰かのことを大切にしたいと思ってる人はきっと誰かの大切な人なんだと思います<br />有着珍视某人这样心情的人必定也被人珍视着 ——不结婚</li>
                <li>残りの人生を君とやり直したい<br />剩下的人生 我想和你重新开始 ——不结婚</li>
                <li>私、男性なんて不確かなものに自分の一生を託したくありません<br />我不想把自己的一辈子 托付给男人这种不可靠的生物 ——W的悲剧</li>
                <li>強いっていうのはどういうことなんですかね<br />所谓的坚强到底是什么啊 ——草莓之夜</li>
                <li>女は守ってやらなきゃいけないなんていってるくせに 自分のほうが全然弱いだもん<br />说什么女人需要保护 结果自己比谁都脆弱 ——草莓之夜</li>
                <li>情熱さえあれば どんな場所でもどんな状況でも何かをうみだすことができる<br />只要有热情 不论是什么环境 什么情况 一定能孕育出什么 ——HUNGRY</li>
                <li>今は自由をなくしても 心から愛せる、愛される人がほしい<br />现在即使我失去自由 也要找到一个我深爱的也深爱我的人——恋爱NEET</li>
                <li>あたしが本当に欲しいもの―― 人生を分かち合える誰か<br />我真正想要的是能和我互相理解 互相支持 互相包容的人 ——恋爱NEET</li>
                <li>カッコつけたら罰です<br />自作孽不可活 ——恋爱NEET</li>
            </ul></div>
        </div>
        <div class="section_body">
            <div class="day  ">
                <div class="dayhead">星期日</div><div class="dayone"><a href="http://www.zzrbl.com/wordpress/?p=9383" title="[2019冬季][3年A班番外篇－现在开始是特别为大家准备的毕业典礼 后篇 完结][菅田将晖 / 永野芽郁 / 片寄凉太 / 今田美樱]3/23发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/adjijiini-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[2019冬季][3年A班番外篇－现在开始是特别为大家准备的毕业典礼 后篇 完结][菅田将晖 / 永野芽郁 / 片寄凉太 / 今田美樱]3/23发布" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9383" title="[2019冬季][3年A班番外篇－现在开始是特别为大家准备的毕业典礼 后篇 完结][菅田将晖 / 永野芽郁 / 片寄凉太 / 今田美樱]3/23发布">[2019冬季][3年A班番外篇－现在开始是特别为大家准备的毕业典礼 后篇 完结][菅田将晖 / 永野芽郁 / 片寄凉太 / 今田美樱]3/23发布</a></span></div>
                <div class="days"><a href="http://www.zzrbl.com/wordpress/?p=9378" title="[2019冬季][傲骨贤妻 10 最终回][ 常盘贵子 / 小泉孝太郎 / 水原希子 / 北村匠海 / 贺来千香子 / 泷藤贤一]3/19发布"><img width="150" height="150" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/jklsjkldjl-150x150.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="[2019冬季][傲骨贤妻 10 最终回][ 常盘贵子 / 小泉孝太郎 / 水原希子 / 北村匠海 / 贺来千香子 / 泷藤贤一]3/19发布" /></a><span><a href="http://www.zzrbl.com/wordpress/?p=9378" title="[2019冬季][傲骨贤妻 10 最终回][ 常盘贵子 / 小泉孝太郎 / 水原希子 / 北村匠海 / 贺来千香子 / 泷藤贤一]3/19发布">[2019冬季][傲骨贤妻 10 最终 …</a></span></div><div class="days"><a href="http://www.zzrbl.com/wordpress/?p=9381" title="[2019冬季][孤高的手术刀 08 最终回][泷泽秀明 / 仲村亨 / 长塚京三 / 石丸干二 / 工藤阿须加 / 山本美月]3/6发布"><img width="150" height="150" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/soshoudhudao-150x150.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="[2019冬季][孤高的手术刀 08 最终回][泷泽秀明 / 仲村亨 / 长塚京三 / 石丸干二 / 工藤阿须加 / 山本美月]3/6发布" /></a><span><a href="http://www.zzrbl.com/wordpress/?p=9381" title="[2019冬季][孤高的手术刀 08 最终回][泷泽秀明 / 仲村亨 / 长塚京三 / 石丸干二 / 工藤阿须加 / 山本美月]3/6发布">[2019冬季][孤高的手术刀 08  …</a></span></div>    </div>
            <div class="day  ">
                <div class="dayhead">星期一</div><div class="dayone"><a href="http://www.zzrbl.com/wordpress/?p=9926" title="[2019春季][放射治疗室][ 洼田正孝 / 本田翼 / 广濑爱丽丝 / 远藤宪一 / 山口纱弥加 / 浅野和之 / 和久井映见 / 浜野谦太 / 丸山智己 / 矢野圣人]"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/04/TIM20190407171736-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[2019春季][放射治疗室][ 洼田正孝 / 本田翼 / 广濑爱丽丝 / 远藤宪一 / 山口纱弥加 / 浅野和之 / 和久井映见 / 浜野谦太 / 丸山智己 / 矢野圣人]" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9926" title="[2019春季][放射治疗室][ 洼田正孝 / 本田翼 / 广濑爱丽丝 / 远藤宪一 / 山口纱弥加 / 浅野和之 / 和久井映见 / 浜野谦太 / 丸山智己 / 矢野圣人]">[2019春季][放射治疗室][ 洼田正孝 / 本田翼 / 广濑爱丽丝 / 远藤宪一 / 山口纱弥加 / 浅野和之 / 和久井映见 / 浜野谦太 / 丸山智己 / 矢野圣人]</a></span></div>
                <div class="days"><a href="http://www.zzrbl.com/wordpress/?p=9229" title="[2018网络剧][追查 第二章 04][大谷亮平/本田翼/岸谷五朗/羽田美智子/田山凉成]4/2发布"><img width="150" height="150" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2018/12/jiiiiiiiiig-150x150.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="[2018网络剧][追查 第二章 04][大谷亮平/本田翼/岸谷五朗/羽田美智子/田山凉成]4/2发布" srcset="http://www.zzrbl.com/wordpress/wp-content/uploads/2018/12/jiiiiiiiiig-150x150.jpg 150w, http://www.zzrbl.com/wordpress/wp-content/uploads/2018/12/jiiiiiiiiig-300x300.jpg 300w, http://www.zzrbl.com/wordpress/wp-content/uploads/2018/12/jiiiiiiiiig-768x768.jpg 768w, http://www.zzrbl.com/wordpress/wp-content/uploads/2018/12/jiiiiiiiiig.jpg 1024w" sizes="(max-width: 150px) 100vw, 150px" /></a><span><a href="http://www.zzrbl.com/wordpress/?p=9229" title="[2018网络剧][追查 第二章 04][大谷亮平/本田翼/岸谷五朗/羽田美智子/田山凉成]4/2发布">[2018网络剧][追查 第二章 04] …</a></span></div><div class="days"><a href="http://www.zzrbl.com/wordpress/?p=5803" title="[2018冬季][追查 第一章 07 最终回][大谷亮平/本田翼/岸谷五朗/羽田美智子/田山凉成]12/03发布"><img width="150" height="150" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2018/03/jiiiiiiiiig-150x150.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="[2018冬季][追查 第一章 07 最终回][大谷亮平/本田翼/岸谷五朗/羽田美智子/田山凉成]12/03发布" srcset="http://www.zzrbl.com/wordpress/wp-content/uploads/2018/03/jiiiiiiiiig-150x150.jpg 150w, http://www.zzrbl.com/wordpress/wp-content/uploads/2018/03/jiiiiiiiiig-300x300.jpg 300w, http://www.zzrbl.com/wordpress/wp-content/uploads/2018/03/jiiiiiiiiig-768x768.jpg 768w, http://www.zzrbl.com/wordpress/wp-content/uploads/2018/03/jiiiiiiiiig.jpg 1024w" sizes="(max-width: 150px) 100vw, 150px" /></a><span><a href="http://www.zzrbl.com/wordpress/?p=5803" title="[2018冬季][追查 第一章 07 最终回][大谷亮平/本田翼/岸谷五朗/羽田美智子/田山凉成]12/03发布">[2018冬季][追查 第一章 07 最 …</a></span></div>    </div>
            <div class="day current ">
                <div class="dayhead">星期二</div><div class="dayone"><a href="http://www.zzrbl.com/wordpress/?p=9361" title="[2019冬季][初恋那一天所读的故事 10 最终回][ 深田恭子 / 永山绚斗 / 横滨流星 / 中村伦也]3/21发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/chuliantnaitnian-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[2019冬季][初恋那一天所读的故事 10 最终回][ 深田恭子 / 永山绚斗 / 横滨流星 / 中村伦也]3/21发布" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9361" title="[2019冬季][初恋那一天所读的故事 10 最终回][ 深田恭子 / 永山绚斗 / 横滨流星 / 中村伦也]3/21发布">[2019冬季][初恋那一天所读的故事 10 最终回][ 深田恭子 / 永山绚斗 / 横滨流星 / 中村伦也]3/21发布</a></span></div>
                <div class="days"><a href="http://www.zzrbl.com/wordpress/?p=9419" title="[2019冬季][广告公司男子宿舍的料理日常 10 最终回][黑羽麻璃央 / 崎山翼 / 小林且弥 / 大山真志 / 桥本美和 / 久野雅弘 / 金刚地武志]3/20发布"><img width="150" height="150" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/guanggaogongsi-150x150.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="[2019冬季][广告公司男子宿舍的料理日常 10 最终回][黑羽麻璃央 / 崎山翼 / 小林且弥 / 大山真志 / 桥本美和 / 久野雅弘 / 金刚地武志]3/20发布" /></a><span><a href="http://www.zzrbl.com/wordpress/?p=9419" title="[2019冬季][广告公司男子宿舍的料理日常 10 最终回][黑羽麻璃央 / 崎山翼 / 小林且弥 / 大山真志 / 桥本美和 / 久野雅弘 / 金刚地武志]3/20发布">[2019冬季][广告公司男子宿舍 …</a></span></div>    </div>
            <div class="day  ">
                <div class="dayhead">星期三</div><div class="dayone"><a href="http://www.zzrbl.com/wordpress/?p=9714" title="[2019冬季][欢乐南极厨 12 最终回][浜野謙太 / マキタスポーツ / 田中要次 / 緋田康人 / 山中崇 / 福山翔大 / 岩崎う大] 4/6发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/02/nanjichuzi-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[2019冬季][欢乐南极厨 12 最终回][浜野謙太 / マキタスポーツ / 田中要次 / 緋田康人 / 山中崇 / 福山翔大 / 岩崎う大] 4/6发布" srcset="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/02/nanjichuzi-290x406.jpg 290w, http://www.zzrbl.com/wordpress/wp-content/uploads/2019/02/nanjichuzi-214x300.jpg 214w, http://www.zzrbl.com/wordpress/wp-content/uploads/2019/02/nanjichuzi-768x1075.jpg 768w, http://www.zzrbl.com/wordpress/wp-content/uploads/2019/02/nanjichuzi-731x1024.jpg 731w, http://www.zzrbl.com/wordpress/wp-content/uploads/2019/02/nanjichuzi.jpg 1080w" sizes="(max-width: 290px) 100vw, 290px" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9714" title="[2019冬季][欢乐南极厨 12 最终回][浜野謙太 / マキタスポーツ / 田中要次 / 緋田康人 / 山中崇 / 福山翔大 / 岩崎う大] 4/6发布">[2019冬季][欢乐南极厨 12 最终回][浜野謙太 / マキタスポーツ / 田中要次 / 緋田康人 / 山中崇 / 福山翔大 / 岩崎う大] 4/6发布</a></span></div>
            </div>
            <div class="day  ">
                <div class="dayhead">星期四</div><div class="dayone"><a href="http://www.zzrbl.com/wordpress/?p=9758" title="[2019冬季网络剧][靛蓝色的心情 06 最终回][竹财辉之助 / 吉田宗洋 / 猪塚健太]4/4发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/02/1-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[2019冬季网络剧][靛蓝色的心情 06 最终回][竹财辉之助 / 吉田宗洋 / 猪塚健太]4/4发布" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9758" title="[2019冬季网络剧][靛蓝色的心情 06 最终回][竹财辉之助 / 吉田宗洋 / 猪塚健太]4/4发布">[2019冬季网络剧][靛蓝色的心情 06 最终回][竹财辉之助 / 吉田宗洋 / 猪塚健太]4/4发布</a></span></div>
                <div class="days"><a href="http://www.zzrbl.com/wordpress/?p=9363" title="[2019冬季][丑闻专门律师QUEEN 10 最终回][竹内结子 / 水川麻美 / 中川大志 / 泉里香 / 升野英知 / 齐藤由贵 / 马场富美加 / 中村友梨香 / 秋山柚稀 / 伊原六花]3/16发布"><img width="150" height="150" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/QUEE-150x150.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="[2019冬季][丑闻专门律师QUEEN 10 最终回][竹内结子 / 水川麻美 / 中川大志 / 泉里香 / 升野英知 / 齐藤由贵 / 马场富美加 / 中村友梨香 / 秋山柚稀 / 伊原六花]3/16发布" /></a><span><a href="http://www.zzrbl.com/wordpress/?p=9363" title="[2019冬季][丑闻专门律师QUEEN 10 最终回][竹内结子 / 水川麻美 / 中川大志 / 泉里香 / 升野英知 / 齐藤由贵 / 马场富美加 / 中村友梨香 / 秋山柚稀 / 伊原六花]3/16发布">[2019冬季][丑闻专门律师QUEEN …</a></span></div>    </div>
            <div class="day  ">
                <div class="dayhead">星期五</div><div class="dayone"><a href="http://www.zzrbl.com/wordpress/?p=9282" title="[2019冬季][I&#8221;s 10][冈山天音 / 白石圣 / 柴田杏花 / 伊岛空 / 小越勇辉]4/7发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2018/12/TIM20181224111749-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[2019冬季][I&quot;s 10][冈山天音 / 白石圣 / 柴田杏花 / 伊岛空 / 小越勇辉]4/7发布" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9282" title="[2019冬季][I&#8221;s 10][冈山天音 / 白石圣 / 柴田杏花 / 伊岛空 / 小越勇辉]4/7发布">[2019冬季][I&#8221;s 10][冈山天音 / 白石圣 / 柴田杏花 / 伊岛空 / 小越勇辉]4/7发布</a></span></div>
                <div class="days"><a href="http://www.zzrbl.com/wordpress/?p=9939" title="[2019春季][昨日的美食 01][ 西岛秀俊 / 内野圣阳] 4/6发布"><img width="150" height="150" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/03/zuoridemeishi-150x150.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="[2019春季][昨日的美食 01][ 西岛秀俊 / 内野圣阳] 4/6发布" /></a><span><a href="http://www.zzrbl.com/wordpress/?p=9939" title="[2019春季][昨日的美食 01][ 西岛秀俊 / 内野圣阳] 4/6发布">[2019春季][昨日的美食 01][  …</a></span></div><div class="days"><a href="http://www.zzrbl.com/wordpress/?p=9472" title="[2019冬季][水果宅急便 12 最终回][滨田岳 / 仲里依纱 / 荒川良良 / 前野朋哉 / 原扶贵子 / 松尾铃木]3/31发布"><img width="150" height="150" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/p2545055796-150x150.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="[2019冬季][水果宅急便 12 最终回][滨田岳 / 仲里依纱 / 荒川良良 / 前野朋哉 / 原扶贵子 / 松尾铃木]3/31发布" /></a><span><a href="http://www.zzrbl.com/wordpress/?p=9472" title="[2019冬季][水果宅急便 12 最终回][滨田岳 / 仲里依纱 / 荒川良良 / 前野朋哉 / 原扶贵子 / 松尾铃木]3/31发布">[2019冬季][水果宅急便 12 最 …</a></span></div><div class="days"><a href="http://www.zzrbl.com/wordpress/?p=9365" title="[2019冬季][警察之家 10 最终回][高畑充希 / 西岛秀俊 / 小日向文世 / 野口五郎 / 角野卓造 / 近藤正臣]3/17发布"><img width="150" height="150" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/jinchashiji-150x150.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="[2019冬季][警察之家 10 最终回][高畑充希 / 西岛秀俊 / 小日向文世 / 野口五郎 / 角野卓造 / 近藤正臣]3/17发布" /></a><span><a href="http://www.zzrbl.com/wordpress/?p=9365" title="[2019冬季][警察之家 10 最终回][高畑充希 / 西岛秀俊 / 小日向文世 / 野口五郎 / 角野卓造 / 近藤正臣]3/17发布">[2019冬季][警察之家 10 最终 …</a></span></div><div class="days"><a href="http://www.zzrbl.com/wordpress/?p=9367" title="[2019冬季][我的大叔 08 最终回][冈田结实 / 远藤宪一 / 城田优]3/10发布"><img width="150" height="150" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/wpdedaoshu-150x150.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="[2019冬季][我的大叔 08 最终回][冈田结实 / 远藤宪一 / 城田优]3/10发布" /></a><span><a href="http://www.zzrbl.com/wordpress/?p=9367" title="[2019冬季][我的大叔 08 最终回][冈田结实 / 远藤宪一 / 城田优]3/10发布">[2019冬季][我的大叔 08 最终 …</a></span></div>    </div>
            <div class="day  ">
                <div class="dayhead">星期六</div><div class="dayone"><a href="http://www.zzrbl.com/wordpress/?p=9854" title="[2019冬季][濒死之眼 04][三浦春马 / 高桥玛莉润 / 松本真里香 / 柿泽勇人 / 小野塚勇人 / 渊上泰史] 4/7发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/03/binsi-3-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[2019冬季][濒死之眼 04][三浦春马 / 高桥玛莉润 / 松本真里香 / 柿泽勇人 / 小野塚勇人 / 渊上泰史] 4/7发布" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9854" title="[2019冬季][濒死之眼 04][三浦春马 / 高桥玛莉润 / 松本真里香 / 柿泽勇人 / 小野塚勇人 / 渊上泰史] 4/7发布">[2019冬季][濒死之眼 04][三浦春马 / 高桥玛莉润 / 松本真里香 / 柿泽勇人 / 小野塚勇人 / 渊上泰史] 4/7发布</a></span></div>
                <div class="days"><a href="http://www.zzrbl.com/wordpress/?p=9371" title="[2019冬季][冤罪律师 10 最终回][坂口健太郎 / 川口春奈 / 藤木直人 / 趣里 / 小市慢太郎 / 正名仆蔵 / 赤楚卫二 / 杉本哲太]3/24发布"><img width="150" height="150" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/Inn-150x150.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="[2019冬季][冤罪律师 10 最终回][坂口健太郎 / 川口春奈 / 藤木直人 / 趣里 / 小市慢太郎 / 正名仆蔵 / 赤楚卫二 / 杉本哲太]3/24发布" /></a><span><a href="http://www.zzrbl.com/wordpress/?p=9371" title="[2019冬季][冤罪律师 10 最终回][坂口健太郎 / 川口春奈 / 藤木直人 / 趣里 / 小市慢太郎 / 正名仆蔵 / 赤楚卫二 / 杉本哲太]3/24发布">[2019冬季][冤罪律师 10 最终 …</a></span></div><div class="days"><a href="http://www.zzrbl.com/wordpress/?p=9376" title="[2019冬季][我的初恋情人 07 最终回][ 野村周平 / 樱井日奈子 / 马场富美加 / 松井爱莉 / 矢作穗香 / 福本莉子]3/3发布"><img width="150" height="150" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/01/chqingr-150x150.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="[2019冬季][我的初恋情人 07 最终回][ 野村周平 / 樱井日奈子 / 马场富美加 / 松井爱莉 / 矢作穗香 / 福本莉子]3/3发布" /></a><span><a href="http://www.zzrbl.com/wordpress/?p=9376" title="[2019冬季][我的初恋情人 07 最终回][ 野村周平 / 樱井日奈子 / 马场富美加 / 松井爱莉 / 矢作穗香 / 福本莉子]3/3发布">[2019冬季][我的初恋情人 07  …</a></span></div>    </div>
        </div>
    </div>
</section>
<section class="movlist bg_g clear">
    <div class="wrapper">
        <div class="section_head">热门日剧<span>人気ドラマ</span><a class="more" href="http://www.zzrbl.com/?cat=11">浏览更多</a></div>
        <div class="section_body">
            <ul>
                <li><a href="http://www.zzrbl.com/wordpress/?p=9926" title="[2019春季][放射治疗室][ 洼田正孝 / 本田翼 / 广濑爱丽丝 / 远藤宪一 / 山口纱弥加 / 浅野和之 / 和久井映见 / 浜野谦太 / 丸山智己 / 矢野圣人]"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/04/TIM20190407171736-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[2019春季][放射治疗室][ 洼田正孝 / 本田翼 / 广濑爱丽丝 / 远藤宪一 / 山口纱弥加 / 浅野和之 / 和久井映见 / 浜野谦太 / 丸山智己 / 矢野圣人]" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9926" title="[2019春季][放射治疗室][ 洼田正孝 / 本田翼 / 广濑爱丽丝 / 远藤宪一 / 山口纱弥加 / 浅野和之 / 和久井映见 / 浜野谦太 / 丸山智己 / 矢野圣人]">[2019春季][放射治疗室][ 洼田正孝 / 本田翼 / 广濑爱丽丝 / 远藤宪一 / 山口纱弥加 / 浅野和之 / 和久井映见 / 浜野谦太 / 丸山智己 / 矢野圣人]</a><p class="time">2019-04-08</p><p class="intro">

导演: 铃木雅之
编剧: 大北はるか
主演: 洼田正孝 / 本...</p></span><div class="info"><span class="views">2,569</span><span class="comments">1</span></div></li><li><a href="http://www.zzrbl.com/wordpress/?p=9282" title="[2019冬季][I&#8221;s 10][冈山天音 / 白石圣 / 柴田杏花 / 伊岛空 / 小越勇辉]4/7发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2018/12/TIM20181224111749-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[2019冬季][I&quot;s 10][冈山天音 / 白石圣 / 柴田杏花 / 伊岛空 / 小越勇辉]4/7发布" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9282" title="[2019冬季][I&#8221;s 10][冈山天音 / 白石圣 / 柴田杏花 / 伊岛空 / 小越勇辉]4/7发布">[2019冬季][I&#8221;s 10][冈山天音 / 白石圣 / 柴田杏花 / 伊岛空 / 小越勇辉]4/7发布</a><p class="time">2019-04-07</p><p class="intro">







导演: 丰岛圭介
编剧: 桂正和
主演: 冈山...</p></span><div class="info"><span class="views">104,540</span><span class="comments">73</span></div></li><li><a href="http://www.zzrbl.com/wordpress/?p=9854" title="[2019冬季][濒死之眼 04][三浦春马 / 高桥玛莉润 / 松本真里香 / 柿泽勇人 / 小野塚勇人 / 渊上泰史] 4/7发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/03/binsi-3-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[2019冬季][濒死之眼 04][三浦春马 / 高桥玛莉润 / 松本真里香 / 柿泽勇人 / 小野塚勇人 / 渊上泰史] 4/7发布" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9854" title="[2019冬季][濒死之眼 04][三浦春马 / 高桥玛莉润 / 松本真里香 / 柿泽勇人 / 小野塚勇人 / 渊上泰史] 4/7发布">[2019冬季][濒死之眼 04][三浦春马 / 高桥玛莉润 / 松本真里香 / 柿泽勇人 / 小野塚勇人 / 渊上泰史] 4/7发布</a><p class="time">2019-04-07</p><p class="intro">

导演: 国本雅广
编剧: 吉田纪子
主演: 三浦春马 / 高桥...</p></span><div class="info"><span class="views">23,747</span><span class="comments">5</span></div></li>    </ul>
        </div>
    </div>
</section>
<section class="tvlist bg_w clear">
    <div class="wrapper">
        <div class="section_head">热门日影<span>人気映画</span><a class="more" href="http://www.zzrbl.com/?cat=12">浏览更多</a></div>
        <div class="section_body">
            <ul>
                <li><a href="http://www.zzrbl.com/wordpress/?p=9817" title="[2018日影][奔跑吧！T校篮球部][720p][志尊淳 / 佐野勇斗 / 早见明里 / 竹内凉真 / 户塚纯贵 / 佐藤宽太 / 铃木胜大]4/9发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/04/TIM20190409132404-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[2018日影][奔跑吧！T校篮球部][720p][志尊淳 / 佐野勇斗 / 早见明里 / 竹内凉真 / 户塚纯贵 / 佐藤宽太 / 铃木胜大]4/9发布" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9817" title="[2018日影][奔跑吧！T校篮球部][720p][志尊淳 / 佐野勇斗 / 早见明里 / 竹内凉真 / 户塚纯贵 / 佐藤宽太 / 铃木胜大]4/9发布">[2018日影][奔跑吧！T校篮球部][720p][志尊淳 / 佐野勇斗 / 早见明里 / 竹内凉真 / 户塚纯贵 / 佐藤宽太 / 铃木胜大]4/9发布</a><p class="time">2019-04-09</p><p class="intro">

奔跑吧！T校篮球部/走れ！T校バスケット部

导演: 古泽...</p></span><div class="info"><span class="views">2,179</span><span class="comments">0</span></div></li><li><a href="http://www.zzrbl.com/wordpress/?p=10096" title="[2018日影][小偷家族][蓝光720p][中川雅也 / 安藤樱 / 松冈茉优 / 城桧吏 / 佐佐木美结 / 树木希林 / 绪形直人 / 池松壮亮 / 森口瑶子 / 山田裕贵]4/6发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/04/p2523912923-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[2018日影][小偷家族][蓝光720p][中川雅也 / 安藤樱 / 松冈茉优 / 城桧吏 / 佐佐木美结 / 树木希林 / 绪形直人 / 池松壮亮 / 森口瑶子 / 山田裕贵]4/6发布" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=10096" title="[2018日影][小偷家族][蓝光720p][中川雅也 / 安藤樱 / 松冈茉优 / 城桧吏 / 佐佐木美结 / 树木希林 / 绪形直人 / 池松壮亮 / 森口瑶子 / 山田裕贵]4/6发布">[2018日影][小偷家族][蓝光720p][中川雅也 / 安藤樱 / 松冈茉优 / 城桧吏 / 佐佐木美结 / 树木希林 / 绪形直人 / 池松壮亮 / 森口瑶子 / 山田裕贵]4/6发布</a><p class="time">2019-04-06</p><p class="intro">

导演: 是枝裕和
编剧: 是枝裕和
主演: 中川雅也 / 安藤...</p></span><div class="info"><span class="views">8,039</span><span class="comments">0</span></div></li><li><a href="http://www.zzrbl.com/wordpress/?p=9811" title="[2018日影][纯平，再想想][蓝光720p][野村周平 / 柳百合菜 / 毎熊克哉 / 岡山天音 / 佐野岳 / 戸塚純貴 / 佐藤祐基 / 藤原季節]4/4发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/03/TIM20190404140222-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[2018日影][纯平，再想想][蓝光720p][野村周平 / 柳百合菜 / 毎熊克哉 / 岡山天音 / 佐野岳 / 戸塚純貴 / 佐藤祐基 / 藤原季節]4/4发布" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9811" title="[2018日影][纯平，再想想][蓝光720p][野村周平 / 柳百合菜 / 毎熊克哉 / 岡山天音 / 佐野岳 / 戸塚純貴 / 佐藤祐基 / 藤原季節]4/4发布">[2018日影][纯平，再想想][蓝光720p][野村周平 / 柳百合菜 / 毎熊克哉 / 岡山天音 / 佐野岳 / 戸塚純貴 / 佐藤祐基 / 藤原季節]4/4发布</a><p class="time">2019-04-04</p><p class="intro">

纯平，再想想/純平、考え直せ

导演: 森冈利行

编剧...</p></span><div class="info"><span class="views">8,965</span><span class="comments">0</span></div></li>    </ul>
        </div>
    </div>
</section>
<section class="movlist bg_g clear">
    <div class="wrapper">
        <div class="section_head">其他视频<span>その他の作品</span><a class="more" href="http://www.zzrbl.com/?cat=32">浏览更多</a></div>
        <div class="section_body">
            <ul>
                <li><a href="http://www.zzrbl.com/wordpress/?p=9906" title="[SUBPIG][2019综艺][20190317洒落主义 平野紫耀]3/20发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/03/2019031700_00_4820190320-150956-1-1-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[SUBPIG][2019综艺][20190317洒落主义 平野紫耀]3/20发布" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9906" title="[SUBPIG][2019综艺][20190317洒落主义 平野紫耀]3/20发布">[SUBPIG][2019综艺][20190317洒落主义 平野紫耀]3/20发布</a><p class="time">2019-03-20</p><p class="intro">

&nbsp;

King&amp;Prince的平野紫耀，自去年组合出道后...</p></span><div class="info"><span class="views">1,187</span><span class="comments">0</span></div></li><li><a href="http://www.zzrbl.com/wordpress/?p=9898" title="[SUBPIG][2019综艺][20190315 The少年俱乐部PREMIUM]3/20发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/03/20190315-The00_57_1120190319-224146-0-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[SUBPIG][2019综艺][20190315 The少年俱乐部PREMIUM]3/20发布" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9898" title="[SUBPIG][2019综艺][20190315 The少年俱乐部PREMIUM]3/20发布">[SUBPIG][2019综艺][20190315 The少年俱乐部PREMIUM]3/20发布</a><p class="time">2019-03-20</p><p class="intro">

NEWS最后的《The少年俱乐部PREMIUM》
三年間、お疲れ様...</p></span><div class="info"><span class="views">785</span><span class="comments">0</span></div></li><li><a href="http://www.zzrbl.com/wordpress/?p=9872" title="[SUBPIG][2018综艺][20181007洒落主义 黑木华]3/14发布"><img width="290" height="406" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2019/03/SUBPIG00_00_0720190314-152033-1-290x406.jpg" class="attachment-thumbnail-list size-thumbnail-list wp-post-image" alt="[SUBPIG][2018综艺][20181007洒落主义 黑木华]3/14发布" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=9872" title="[SUBPIG][2018综艺][20181007洒落主义 黑木华]3/14发布">[SUBPIG][2018综艺][20181007洒落主义 黑木华]3/14发布</a><p class="time">2019-03-14</p><p class="intro">

&nbsp;

女演员黑木华，大阪出身，28岁。2014年凭借电...</p></span><div class="info"><span class="views">1,429</span><span class="comments">0</span></div></li>    </ul>
        </div>
    </div>
</section>
<section class="videolist bg_w clear">
    <div class="wrapper">
        <div class="section_body">
            <ul>
                <li><a href="http://www.zzrbl.com/wordpress/?p=7151" title="【2018综艺】20180322AMETALK B&#8217;z搞笑艺人【猪猪】"><img width="290" height="190" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2018/03/20180322AMETALK00_00_0420180328-214357-1-290x190.jpg" class="attachment-thumbnail-video size-thumbnail-video wp-post-image" alt="【2018综艺】20180322AMETALK B&#039;z搞笑艺人【猪猪】" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=7151" title="【2018综艺】20180322AMETALK B&#8217;z搞笑艺人【猪猪】">【2018综艺】20180322AMETALK B&#8217;z搞笑艺人【猪猪】</a></span><div class="info"><span class="views">3,319</span><span class="comments">0</span></div></li><li><a href="http://www.zzrbl.com/wordpress/?p=7145" title="【2018综艺】20180322人间观察 福士苍汰cut【猪猪】"><img width="290" height="190" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2018/03/00_01_0820180325-194256-0-290x190.jpg" class="attachment-thumbnail-video size-thumbnail-video wp-post-image" alt="【2018综艺】20180322人间观察 福士苍汰cut【猪猪】" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=7145" title="【2018综艺】20180322人间观察 福士苍汰cut【猪猪】">【2018综艺】20180322人间观察 福士苍汰cut【猪猪】</a></span><div class="info"><span class="views">4,096</span><span class="comments">0</span></div></li><li><a href="http://www.zzrbl.com/wordpress/?p=5904" title="【2018综艺】20180301人间观察 岩田刚典&#038;山本美月cut【猪猪】"><img width="290" height="190" src="http://www.zzrbl.com/wordpress/wp-content/uploads/2018/03/720P100_00_2220180307-222237-0-290x190.jpg" class="attachment-thumbnail-video size-thumbnail-video wp-post-image" alt="【2018综艺】20180301人间观察 岩田刚典&amp;山本美月cut【猪猪】" /></a><span class="title"><a href="http://www.zzrbl.com/wordpress/?p=5904" title="【2018综艺】20180301人间观察 岩田刚典&#038;山本美月cut【猪猪】">【2018综艺】20180301人间观察 岩田刚典&#038;山本美月cut【猪猪】</a></span><div class="info"><span class="views">5,551</span><span class="comments">0</span></div></li>    </ul>
        </div>
        <div class="section_head">小视频<span>短い動画</span><a class="more" href="http://www.zzrbl.com/?cat=10">浏览更多</a></div>
    </div>
</section>
<section class="updatelist bg_g clear">
    <div class="wrapper">
        <div class="section_body">
            <div class="newslist left"><h2>最新资讯</h2><ul>
                <li><a href="http://www.zzrbl.com/wordpress/?p=7302" title="【补档】度盘链接失效报错专用">【补档】度盘链接失效报错专用</a>
                </li>
                <li><a href="http://www.zzrbl.com/wordpress/?p=5907" title="【公告】关于部分地区无法访问百度云问题">【公告】关于部分地区无法访问百度云问题</a>
                </li>
                <li><a href="http://www.zzrbl.com/wordpress/?p=5621" title="SUBPIG猪猪日剧字幕组长期招收 日语翻译/时间轴/后期/片源">SUBPIG猪猪日剧字幕组长期招收 日语翻译/时间轴 …</a>
                </li>
            </ul></div>
            <div class="commentlist right"><h2>最新讨论</h2>
                <ul>
                    <li><a href="http://www.zzrbl.com/wordpress/?p=10050" title="2019年04月发售热门日影介绍">2019年04月发售热门日影介绍</a>
                    </li>
                    <li><a href="http://www.zzrbl.com/wordpress/?p=9771" title="2019年03月发售热门日影介绍">2019年03月发售热门日影介绍</a>
                    </li>
                    <li><a href="http://www.zzrbl.com/wordpress/?p=9582" title="2019年02月发售热门日影介绍">2019年02月发售热门日影介绍</a>
                    </li>
                    <li><a href="http://www.zzrbl.com/wordpress/?p=9307" title="2019年01月发售热门日影介绍">2019年01月发售热门日影介绍</a>
                    </li>
                    <li><a href="http://www.zzrbl.com/wordpress/?p=9075" title="2018年12月发售热门日影介绍">2018年12月发售热门日影介绍</a>
                    </li>
                    <li><a href="http://www.zzrbl.com/wordpress/?p=8873" title="2018年11月发售热门日影介绍">2018年11月发售热门日影介绍</a>
                    </li>
                    <li><a href="http://www.zzrbl.com/wordpress/?p=8554" title="2018年10月发售热门日影介绍">2018年10月发售热门日影介绍</a>
                    </li>
                    <li><a href="http://www.zzrbl.com/wordpress/?p=8305" title="2018年9月发售热门日影介绍">2018年9月发售热门日影介绍</a>
                    </li>
                    <li><a href="http://www.zzrbl.com/wordpress/?p=8066" title="2018年8月发售热门日影介绍">2018年8月发售热门日影介绍</a>
                    </li>
                    <li><a href="http://www.zzrbl.com/wordpress/?p=3192" title="2010春●水10《Mother》：2010.4.14～2010.6.23  by 原猪猪乐园会员”多部酱″">2010春●水10《Mother》：2010.4.14～2010.6.23  …</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<section class="follow bg_f clear">
    <div class="wrapper">
        <div class="weixin"><div class="icon left">微信订阅号<span>SUBPIGClub</span></div><img src="http://www.zzrbl.com/wp-content/uploads/2017/07/weixin.jpg" /></div>
        <div class="weibo"><div class="icon left">字幕组微博<span><a href="https://www.weibo.com/zhuzhuriju?refer_flag=1001030101_&is_hot=1" target="_blank">猪猪日剧字幕组</a></span></div><img src="http://www.zzrbl.com/wp-content/uploads/2017/07/weibo.jpg" /></div>
        <div class="more"><div class="icon left">更多关注渠道</div><a href="http://weibo.com/subpigbd" target="_blank">猪猪日部落微博</a><br />
            <a href="http://weibo.com/subpigcn" target="_blank">SUBPIG猪猪映画微博</a><br />
            <a href="https://www.weibo.com/zhuzhuriju?refer_flag=1001030101_&is_hot=1" target="_blank">SUBPIG猪猪微视频微博</a><br />
            <a href="http://www.diyidan.com/user/home/6293877835999093626" target="_blank">第一弹官方账号：猪肉熟了</a><br />
            <a href="http://space.bilibili.com/35581334/" target="_blank">哔哩哔哩官方up号：猪肉熟了</a><br />
            <a href="http://space.bilibili.com/99798496/" target="_blank">SUBPIG猪猪微视频</a></div>
    </div>
</section>
<section class="copyright bg_w clear">
    <div class="wrapper">
        <div class="left">&copy; 2019 <a href="http://www.zzrbl.com/wordpress" title="猪猪日部落 - 日剧综合站">猪猪日部落</a>  Designed By <a href="http://www.jeffdesign.net/" title="Jeff Design">Jeff Design</a>
        </div>
        <div class="right">| <a href ="">关于我们</a> | <a href="">联系我们</a> | <a href="http://www.zzrbl.com/?p=5621">加入我们</a> |</div>
    </div>
</section>
<script type='text/javascript'>
    /* <![CDATA[ */
    var ratingsL10n = {"plugin_url":"http:\/\/www.zzrbl.com\/wordpress\/wp-content\/plugins\/wp-postratings","ajax_url":"http:\/\/www.zzrbl.com\/wordpress\/wp-admin\/admin-ajax.php","text_wait":"Please rate only 1 item at a time.","image":"stars","image_ext":"gif","max":"5","show_loading":"1","show_fading":"1","custom":"0"};
    var ratings_mouseover_image=new Image();ratings_mouseover_image.src="http://www.zzrbl.com/wordpress/wp-content/plugins/wp-postratings/images/stars/rating_over.gif";;
    /* ]]> */
</script>
<script type='text/javascript' src='http://www.zzrbl.com/wordpress/wp-content/plugins/wp-postratings/js/postratings-js.js?ver=1.85'></script>
<script type='text/javascript' src='http://www.zzrbl.com/wordpress/wp-includes/js/wp-embed.min.js?ver=4.8.9'></script>
<script type='text/javascript' src='http://www.zzrbl.com/wordpress/wp-content/themes/zzrbl/js/owl.carousel.min.js?ver=20170318'></script>
<script type='text/javascript' src='http://www.zzrbl.com/wordpress/wp-content/themes/zzrbl/js/scripts.js?ver=20170318'></script>
<!-- Theme By Jeffdesign.Net -->  <div id="bitnami-banner" data-banner-id="8184a">  <style>#bitnami-banner {z-index:100000;height:80px;padding:0px;width:120px;background:transparent;position:fixed;right:0px;bottom:0px;border:0px solid #EDEDED;} #bitnami-banner .bitnami-corner-image-div {position:fixed;right:0px;bottom:0px;border:0px;z-index:100001;height:110px;} #bitnami-banner .bitnami-corner-image-div .bitnami-corner-image {position:fixed;right:0px;bottom:0px;border:0px;z-index:100001;height:110px;} #bitnami-close-banner-button {height:12px;width:12px;z-index:10000000000;position:fixed;right:5px;bottom:65px;display:none;cursor:pointer}</style>  <img id="bitnami-close-banner-button" src="/bitnami/images/close.png"/>  <div class="bitnami-corner-image-div">     <a href="/bitnami/index.html" target="_blank">       <img class="bitnami-corner-image" alt="Bitnami" src="/bitnami/images/corner-logo.png"/>     </a>  </div>  <script type="text/javascript" src="/bitnami/banner.js"> </script> </div>   </body></html>
<p style="display:none;"><a href="www.jpdrma.com">2</a></p>

</head>
<body>

</body>
</html>
