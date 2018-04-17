.class public Lcom/umeng/socialize/view/OauthDialog;
.super Landroid/app/Dialog;
.source "OauthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/OauthDialog$a;,
        Lcom/umeng/socialize/view/OauthDialog$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "OauthDialog"


# instance fields
.field private final b:Lcom/umeng/socialize/common/ResContainer;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/CheckBox;

.field private g:I

.field private h:Landroid/os/Bundle;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;

.field private k:Landroid/app/Activity;

.field private l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/umeng/socialize/view/OauthDialog$a;

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/UMAuthListener;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/16 v11, 0x8

    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 104
    invoke-static {p1}, Lcom/umeng/socialize/common/ResContainer;->get(Landroid/content/Context;)Lcom/umeng/socialize/common/ResContainer;

    move-result-object v0

    const-string v2, "umeng_socialize_popup_dialog"

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/common/ResContainer;->style(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 70
    iput v7, p0, Lcom/umeng/socialize/view/OauthDialog;->g:I

    .line 73
    const-string v0, "error"

    iput-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->i:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/umeng/socialize/view/a;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/a;-><init>(Lcom/umeng/socialize/view/OauthDialog;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->o:Landroid/os/Handler;

    .line 105
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->j:Landroid/content/Context;

    .line 106
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/common/ResContainer;->get(Landroid/content/Context;)Lcom/umeng/socialize/common/ResContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->b:Lcom/umeng/socialize/common/ResContainer;

    .line 107
    iput-object p1, p0, Lcom/umeng/socialize/view/OauthDialog;->k:Landroid/app/Activity;

    .line 108
    iput-object p2, p0, Lcom/umeng/socialize/view/OauthDialog;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 109
    new-instance v0, Lcom/umeng/socialize/view/OauthDialog$a;

    invoke-direct {v0, p3, p2}, Lcom/umeng/socialize/view/OauthDialog$a;-><init>(Lcom/umeng/socialize/UMAuthListener;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->n:Lcom/umeng/socialize/view/OauthDialog$a;

    .line 110
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/view/OauthDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 114
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->k:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 116
    iget-object v2, p0, Lcom/umeng/socialize/view/OauthDialog;->b:Lcom/umeng/socialize/common/ResContainer;

    const-string v3, "umeng_socialize_oauth_dialog"

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/common/ResContainer;->layout(Ljava/lang/String;)I

    move-result v2

    .line 117
    iget-object v3, p0, Lcom/umeng/socialize/view/OauthDialog;->b:Lcom/umeng/socialize/common/ResContainer;

    const-string v4, "umeng_socialize_follow"

    invoke-virtual {v3, v4}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v3

    .line 118
    iget-object v4, p0, Lcom/umeng/socialize/view/OauthDialog;->b:Lcom/umeng/socialize/common/ResContainer;

    const-string v5, "umeng_socialize_follow_check"

    invoke-virtual {v4, v5}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v4

    .line 120
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->d:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 123
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->f:Landroid/widget/CheckBox;

    .line 125
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->m:Ljava/util/Set;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v6

    .line 126
    :goto_0
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v2, :cond_0

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v2, :cond_3

    :cond_0
    move v2, v6

    .line 128
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 129
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :goto_2
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->b:Lcom/umeng/socialize/common/ResContainer;

    const-string v2, "progress_bar_parent"

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    .line 135
    iget-object v2, p0, Lcom/umeng/socialize/view/OauthDialog;->b:Lcom/umeng/socialize/common/ResContainer;

    const-string v4, "umeng_socialize_title_bar_leftBt"

    invoke-virtual {v2, v4}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v2

    .line 136
    iget-object v4, p0, Lcom/umeng/socialize/view/OauthDialog;->b:Lcom/umeng/socialize/common/ResContainer;

    const-string v5, "umeng_socialize_title_bar_rightBt"

    invoke-virtual {v4, v5}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v4

    .line 137
    iget-object v5, p0, Lcom/umeng/socialize/view/OauthDialog;->b:Lcom/umeng/socialize/common/ResContainer;

    const-string v8, "umeng_socialize_title_bar_middleTv"

    invoke-virtual {v5, v8}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v5

    .line 138
    iget-object v8, p0, Lcom/umeng/socialize/view/OauthDialog;->b:Lcom/umeng/socialize/common/ResContainer;

    const-string v9, "umeng_socialize_titlebar"

    invoke-virtual {v8, v9}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v8

    .line 140
    iget-object v9, p0, Lcom/umeng/socialize/view/OauthDialog;->d:Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->e:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->e:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 144
    new-instance v2, Lcom/umeng/socialize/view/b;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/b;-><init>(Lcom/umeng/socialize/view/OauthDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SINA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 155
    const-string v1, "\u5fae\u535a"

    .line 163
    :cond_1
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6388\u6743"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-direct {p0}, Lcom/umeng/socialize/view/OauthDialog;->a()Z

    .line 167
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->d:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 168
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->j:Landroid/content/Context;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SocializeUtils;->dip2Px(Landroid/content/Context;F)I

    move-result v5

    .line 171
    new-instance v0, Lcom/umeng/socialize/view/c;

    iget-object v2, p0, Lcom/umeng/socialize/view/OauthDialog;->j:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/view/c;-><init>(Lcom/umeng/socialize/view/OauthDialog;Landroid/content/Context;Landroid/view/View;Landroid/view/View;I)V

    .line 216
    iget-object v1, p0, Lcom/umeng/socialize/view/OauthDialog;->d:Landroid/view/View;

    invoke-virtual {v0, v1, v10, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/OauthDialog;->setContentView(Landroid/view/View;)V

    .line 221
    invoke-virtual {p0}, Lcom/umeng/socialize/view/OauthDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 223
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->isFloatWindowStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 224
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->getFloatWindowSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 225
    aget v2, v0, v7

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 226
    aget v0, v0, v6

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 227
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->b:Lcom/umeng/socialize/common/ResContainer;

    const-string v2, "umeng_socialize_dialog_anim_fade"

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/common/ResContainer;->style(Ljava/lang/String;)I

    move-result v0

    .line 233
    :goto_4
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 235
    invoke-virtual {p0}, Lcom/umeng/socialize/view/OauthDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 236
    return-void

    :cond_2
    move v0, v7

    .line 125
    goto/16 :goto_0

    :cond_3
    move v2, v7

    .line 126
    goto/16 :goto_1

    .line 131
    :cond_4
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 156
    :cond_5
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RENREN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 157
    const-string v1, "\u4eba\u4eba\u7f51"

    goto/16 :goto_3

    .line 158
    :cond_6
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DOUBAN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 159
    const-string v1, "\u8c46\u74e3"

    goto/16 :goto_3

    .line 160
    :cond_7
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TENCENT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    const-string v1, "\u817e\u8baf\u5fae\u535a"

    goto/16 :goto_3

    .line 229
    :cond_8
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 230
    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 231
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->b:Lcom/umeng/socialize/common/ResContainer;

    const-string v2, "umeng_socialize_dialog_animations"

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/common/ResContainer;->style(Ljava/lang/String;)I

    move-result v0

    goto :goto_4
.end method

.method static synthetic a(Lcom/umeng/socialize/view/OauthDialog;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/umeng/socialize/view/OauthDialog;->g:I

    return p1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/OauthDialog;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/umeng/socialize/view/OauthDialog;->h:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/OauthDialog;)Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->e:Landroid/view/View;

    return-object v0
.end method

.method private a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    new-instance v0, Lcom/umeng/socialize/utils/URLBuilder;

    iget-object v1, p0, Lcom/umeng/socialize/view/OauthDialog;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/socialize/utils/URLBuilder;-><init>(Landroid/content/Context;)V

    .line 244
    const-string v1, "http://log.umsns.com/"

    .line 245
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/utils/URLBuilder;->setHost(Ljava/lang/String;)Lcom/umeng/socialize/utils/URLBuilder;

    move-result-object v1

    const-string v2, "share/auth/"

    .line 246
    invoke-virtual {v1, v2}, Lcom/umeng/socialize/utils/URLBuilder;->setPath(Ljava/lang/String;)Lcom/umeng/socialize/utils/URLBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/OauthDialog;->j:Landroid/content/Context;

    .line 247
    invoke-static {v2}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/utils/URLBuilder;->setAppkey(Ljava/lang/String;)Lcom/umeng/socialize/utils/URLBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/Config;->EntityKey:Ljava/lang/String;

    .line 248
    invoke-virtual {v1, v2}, Lcom/umeng/socialize/utils/URLBuilder;->setEntityKey(Ljava/lang/String;)Lcom/umeng/socialize/utils/URLBuilder;

    move-result-object v1

    .line 249
    invoke-virtual {v1, p1}, Lcom/umeng/socialize/utils/URLBuilder;->withMedia(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/utils/URLBuilder;

    move-result-object v1

    const-string v2, "10"

    .line 250
    invoke-virtual {v1, v2}, Lcom/umeng/socialize/utils/URLBuilder;->withOpId(Ljava/lang/String;)Lcom/umeng/socialize/utils/URLBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/Config;->SessionId:Ljava/lang/String;

    .line 251
    invoke-virtual {v1, v2}, Lcom/umeng/socialize/utils/URLBuilder;->withSessionId(Ljava/lang/String;)Lcom/umeng/socialize/utils/URLBuilder;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/Config;->UID:Ljava/lang/String;

    .line 252
    invoke-virtual {v1, v2}, Lcom/umeng/socialize/utils/URLBuilder;->withUID(Ljava/lang/String;)Lcom/umeng/socialize/utils/URLBuilder;

    .line 254
    invoke-virtual {v0}, Lcom/umeng/socialize/utils/URLBuilder;->toEncript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/OauthDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/OauthDialog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 461
    :try_start_0
    const-string v0, "ud_get="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 462
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lcom/umeng/socialize/net/utils/AesHelper;->decryptNoPadding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 463
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 469
    :goto_0
    return-object p1

    .line 465
    :catch_0
    move-exception v0

    .line 466
    const-string v1, "OauthDialog"

    const-string v2, "### AuthWebViewClient\u89e3\u5bc6\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a()Z
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 260
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/view/OauthDialog;->b:Lcom/umeng/socialize/common/ResContainer;

    const-string v2, "webView"

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->c:Landroid/webkit/WebView;

    .line 262
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->c:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/umeng/socialize/view/OauthDialog;->b()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 263
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/umeng/socialize/view/f;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/f;-><init>(Lcom/umeng/socialize/view/OauthDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 276
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 277
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 278
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 279
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 280
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 282
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 283
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 284
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_0

    .line 285
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 287
    :cond_0
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 288
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 289
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 290
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 291
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_1

    .line 294
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 295
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 296
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 297
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 298
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 301
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 304
    :try_start_0
    const-class v1, Landroid/webkit/WebSettings;

    const-string v2, "setDisplayZoomControls"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 306
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 307
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 314
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_3

    .line 316
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 317
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    :cond_3
    :goto_1
    return v6

    .line 321
    :catch_0
    move-exception v0

    goto :goto_1

    .line 308
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/OauthDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->j:Landroid/content/Context;

    return-object v0
.end method

.method private b()Landroid/webkit/WebViewClient;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 334
    .line 336
    :try_start_0
    const-class v2, Landroid/webkit/WebViewClient;

    const-string v3, "onReceivedSslError"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/webkit/WebView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/webkit/SslErrorHandler;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/net/http/SslError;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 338
    if-eqz v2, :cond_1

    :goto_0
    move v1, v0

    .line 345
    :goto_1
    if-eqz v1, :cond_0

    .line 346
    const-string v0, "OauthDialog"

    const-string v1, "has method onReceivedSslError : "

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v0, Lcom/umeng/socialize/view/g;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/g;-><init>(Lcom/umeng/socialize/view/OauthDialog;)V

    .line 356
    :goto_2
    return-object v0

    .line 355
    :cond_0
    const-string v0, "OauthDialog"

    const-string v1, "has no method onReceivedSslError : "

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v0, Lcom/umeng/socialize/view/OauthDialog$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/socialize/view/OauthDialog$b;-><init>(Lcom/umeng/socialize/view/OauthDialog;Lcom/umeng/socialize/view/a;)V

    goto :goto_2

    .line 342
    :catch_0
    move-exception v0

    goto :goto_1

    .line 341
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/OauthDialog;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/OauthDialog;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->m:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/OauthDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/socialize/view/OauthDialog;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/umeng/socialize/view/OauthDialog;->g:I

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->h:Landroid/os/Bundle;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->n:Lcom/umeng/socialize/view/OauthDialog$a;

    new-instance v1, Lcom/umeng/socialize/SocializeException;

    const-string v2, "unfetch usid..."

    invoke-direct {v1, v2}, Lcom/umeng/socialize/SocializeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/OauthDialog$a;->a(Ljava/lang/Exception;)V

    .line 494
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 495
    return-void

    .line 488
    :cond_0
    const-string v0, "OauthDialog"

    const-string v1, "### dismiss "

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->n:Lcom/umeng/socialize/view/OauthDialog$a;

    iget-object v1, p0, Lcom/umeng/socialize/view/OauthDialog;->h:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/OauthDialog$a;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->n:Lcom/umeng/socialize/view/OauthDialog$a;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/OauthDialog$a;->a()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 330
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setWaitUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/umeng/socialize/view/OauthDialog;->i:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 474
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->h:Landroid/os/Bundle;

    .line 477
    iget-object v0, p0, Lcom/umeng/socialize/view/OauthDialog;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/OauthDialog;->a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/umeng/socialize/view/OauthDialog;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 479
    return-void
.end method
