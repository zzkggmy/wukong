.class public Lcom/umeng/socialize/editorpage/ShareActivity;
.super Landroid/app/Activity;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CANCLE_RESULTCODE:I = 0x3e8

.field public static final FOLLOW_FILE_NAME:Ljava/lang/String; = "umeng_follow"

.field public static final KEY_AT:Ljava/lang/String; = "at"

.field public static final KEY_FOLLOW:Ljava/lang/String; = "follow_"

.field public static final KEY_LOCATION:Ljava/lang/String; = "location"

.field public static final KEY_PIC:Ljava/lang/String; = "pic"

.field public static final KEY_PLATFORM:Ljava/lang/String; = "media"

.field public static final KEY_TEXT:Ljava/lang/String; = "txt"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final REQUEST_CODE:I = 0x4cd

.field private static final c:Ljava/lang/String; = "ShareActivity"

.field private static d:I


# instance fields
.field private A:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private B:Lcom/umeng/socialize/editorpage/location/a;

.field private C:Lcom/umeng/socialize/bean/UMLocation;

.field private D:I

.field private E:Z

.field private F:Landroid/app/Dialog;

.field private G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/umeng/socialize/editorpage/location/b;

.field protected a:Landroid/widget/ImageView;

.field b:Landroid/text/TextWatcher;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/umeng/socialize/common/ResContainer;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/CheckBox;

.field private w:Lcom/umeng/socialize/editorpage/KeyboardListenRelativeLayout;

.field private x:Landroid/widget/ProgressBar;

.field private y:Landroid/content/Context;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x8c

    sput v0, Lcom/umeng/socialize/editorpage/ShareActivity;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->E:Z

    .line 105
    iput-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->G:Ljava/util/Set;

    .line 106
    iput-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->H:Lcom/umeng/socialize/editorpage/location/b;

    .line 253
    new-instance v0, Lcom/umeng/socialize/editorpage/b;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/editorpage/b;-><init>(Lcom/umeng/socialize/editorpage/ShareActivity;)V

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->b:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/editorpage/ShareActivity;I)I
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->D:I

    return p1
.end method

.method private a(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 162
    const-string v0, "TENCENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 169
    :goto_0
    return-object v0

    .line 164
    :cond_0
    const-string v0, "RENREN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_0

    .line 166
    :cond_1
    const-string v0, "DOUBAN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_0

    .line 169
    :cond_2
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/editorpage/ShareActivity;Lcom/umeng/socialize/bean/UMLocation;)Lcom/umeng/socialize/bean/UMLocation;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->C:Lcom/umeng/socialize/bean/UMLocation;

    return-object p1
.end method

.method private a(ILandroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const-string v0, "\u8f93\u5165\u5185\u5bb9\u4e3a\u7a7a..."

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 299
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->countContentLength(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/umeng/socialize/editorpage/ShareActivity;->d:I

    if-le v1, v2, :cond_1

    .line 281
    const-string v0, "\u8f93\u5165\u5185\u5bb9\u8d85\u8fc7140\u4e2a\u5b57."

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 285
    :cond_1
    iget-boolean v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->z:Z

    if-eqz v1, :cond_2

    .line 286
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->y:Landroid/content/Context;

    const-string v1, "\u8d85\u51fa\u6700\u5927\u5b57\u6570\u9650\u5236...."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 290
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 291
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 292
    const-string v3, "txt"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v0, "pic"

    iget-object v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->g:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "follow_"

    iget-boolean v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->h:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    const-string v0, "location"

    iget-object v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->C:Lcom/umeng/socialize/bean/UMLocation;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 296
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 297
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/editorpage/ShareActivity;->setResult(ILandroid/content/Intent;)V

    .line 298
    invoke-virtual {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->a()V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 494
    if-eqz p1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 506
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->C:Lcom/umeng/socialize/bean/UMLocation;

    if-nez v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->p:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v2, "umeng_socialize_location_off"

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->drawable(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 499
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->p:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v2, "umeng_socialize_location_on"

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->drawable(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 503
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/editorpage/ShareActivity;)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/umeng/socialize/editorpage/ShareActivity;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->z:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/socialize/editorpage/ShareActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->y:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/umeng/socialize/editorpage/location/a;

    invoke-direct {v0}, Lcom/umeng/socialize/editorpage/location/a;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->B:Lcom/umeng/socialize/editorpage/location/a;

    .line 183
    new-instance v0, Lcom/umeng/socialize/editorpage/location/d;

    invoke-direct {v0}, Lcom/umeng/socialize/editorpage/location/d;-><init>()V

    .line 184
    invoke-virtual {v0, p0}, Lcom/umeng/socialize/editorpage/location/d;->a(Landroid/content/Context;)V

    .line 185
    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->B:Lcom/umeng/socialize/editorpage/location/a;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/editorpage/location/a;->a(Lcom/umeng/socialize/editorpage/location/d;)V

    .line 186
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->B:Lcom/umeng/socialize/editorpage/location/a;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/editorpage/location/a;->a(Landroid/content/Context;)V

    .line 187
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->g:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_share_image"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/editorpage/ShareActivity;Z)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/umeng/socialize/editorpage/ShareActivity;->a(Z)V

    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_title_bar_middleTv"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_title_bar_leftBt"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->l:Landroid/widget/Button;

    .line 197
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_title_bar_rightBt"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->m:Landroid/widget/Button;

    .line 198
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_share_edittext"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->n:Landroid/widget/EditText;

    .line 203
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->b:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 208
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_share_word_num"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->t:Landroid/widget/TextView;

    .line 209
    invoke-direct {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->z:Z

    .line 212
    iget-boolean v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->j:Z

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_share_location"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_location_ic"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->p:Landroid/widget/ImageButton;

    .line 215
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->p:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v2, "umeng_socialize_location_off"

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->drawable(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 218
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_location_progressbar"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->q:Landroid/view/View;

    .line 222
    :cond_1
    iget-boolean v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->i:Z

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_share_at"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->o:Landroid/widget/ImageButton;

    .line 224
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_share_image"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_share_previewImg"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->a:Landroid/widget/ImageView;

    .line 232
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_share_previewImg_remove"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->r:Landroid/view/View;

    .line 233
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->g:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->y:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "umeng_socialize_share_video"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->h:Z

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v1, "umeng_socialize_follow_check"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->v:Landroid/widget/CheckBox;

    .line 248
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->v:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->v:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 251
    :cond_4
    return-void

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->g:Ljava/lang/String;

    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 239
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->y:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "umeng_socialize_share_music"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 242
    :cond_6
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->a:Landroid/widget/ImageView;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->C:Lcom/umeng/socialize/bean/UMLocation;

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u662f\u5426\u5220\u9664\u4f4d\u7f6e\u4fe1\u606f\uff1f"

    .line 428
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 429
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u662f"

    new-instance v2, Lcom/umeng/socialize/editorpage/e;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/editorpage/e;-><init>(Lcom/umeng/socialize/editorpage/ShareActivity;)V

    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5426"

    new-instance v2, Lcom/umeng/socialize/editorpage/d;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/editorpage/d;-><init>(Lcom/umeng/socialize/editorpage/ShareActivity;)V

    .line 440
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->e()V

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    .prologue
    .line 391
    sget v0, Lcom/umeng/socialize/editorpage/ShareActivity;->d:I

    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->n:Landroid/widget/EditText;

    .line 392
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->countContentLength(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 395
    const-string v1, "ShareActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->n:Landroid/widget/EditText;

    .line 399
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 400
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-static {v3}, Lcom/umeng/socialize/utils/SocializeUtils;->countContentLength(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->t:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    if-ltz v0, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->B:Lcom/umeng/socialize/editorpage/location/a;

    if-nez v0, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->b()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->H:Lcom/umeng/socialize/editorpage/location/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->H:Lcom/umeng/socialize/editorpage/location/b;

    invoke-virtual {v0}, Lcom/umeng/socialize/editorpage/location/b;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 462
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->H:Lcom/umeng/socialize/editorpage/location/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/editorpage/location/b;->cancel(Z)Z

    .line 465
    :cond_1
    new-instance v0, Lcom/umeng/socialize/editorpage/f;

    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->B:Lcom/umeng/socialize/editorpage/location/a;

    invoke-direct {v0, p0, v1}, Lcom/umeng/socialize/editorpage/f;-><init>(Lcom/umeng/socialize/editorpage/ShareActivity;Lcom/umeng/socialize/editorpage/location/a;)V

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->H:Lcom/umeng/socialize/editorpage/location/b;

    .line 490
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->H:Lcom/umeng/socialize/editorpage/location/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/editorpage/location/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 491
    return-void
.end method

.method private f()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 533
    :try_start_0
    const-string v0, "com.umeng.socialize.view.ShareAtDialogV2"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 535
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/umeng/socialize/editorpage/ShareActivity;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 539
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->A:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/umeng/socialize/Config;->UID:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-object v0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    const-string v1, "ShareActivity"

    const-string v2, "\u5982\u679c\u9700\u8981\u4f7f\u7528\u2018@\u597d\u53cb\u2019\u529f\u80fd\uff0c\u8bf7\u6dfb\u52a0\u76f8\u5e94\u7684jar\u6587\u4ef6\uff1b\u5426\u5219\u5ffd\u7565\u6b64\u4fe1\u606f"

    invoke-static {v1, v2, v0}, Lcom/umeng/socialize/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 546
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 369
    iget v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->D:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 370
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 371
    invoke-virtual {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 371
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 373
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/umeng/socialize/editorpage/c;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/editorpage/c;-><init>(Lcom/umeng/socialize/editorpage/ShareActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->finish()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 510
    sget-boolean v0, Lcom/umeng/socialize/common/SocializeConstants;->BACKKEY_COMPLETE_CLOSE:Z

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 513
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/umeng/socialize/editorpage/g;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/editorpage/g;-><init>(Lcom/umeng/socialize/editorpage/ShareActivity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 520
    const/4 v0, 0x1

    .line 523
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public inputAt(Landroid/text/SpannableString;)V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 528
    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 529
    return-void
.end method

.method public onAtFriends(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->F:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->f()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->F:Landroid/app/Dialog;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->F:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->F:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 319
    :cond_1
    return-void
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 302
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->setResult(I)V

    .line 303
    invoke-virtual {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->a()V

    .line 304
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 327
    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v2, "umeng_socialize_share_previewImg_remove"

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 328
    invoke-direct {p0, p1}, Lcom/umeng/socialize/editorpage/ShareActivity;->b(Landroid/view/View;)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v2, "umeng_socialize_title_bar_rightBt"

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 330
    invoke-direct {p0, p1}, Lcom/umeng/socialize/editorpage/ShareActivity;->a(Landroid/view/View;)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v2, "umeng_socialize_title_bar_leftBt"

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 332
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/editorpage/ShareActivity;->onCancel(Landroid/view/View;)V

    goto :goto_0

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v2, "umeng_socialize_share_at"

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 334
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/editorpage/ShareActivity;->onAtFriends(Landroid/view/View;)V

    goto :goto_0

    .line 335
    :cond_4
    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v2, "umeng_socialize_location_ic"

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 336
    invoke-direct {p0, p1}, Lcom/umeng/socialize/editorpage/ShareActivity;->c(Landroid/view/View;)V

    goto :goto_0

    .line 337
    :cond_5
    iget-object v1, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v2, "umeng_socialize_follow_check"

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 338
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/editorpage/ShareActivity;->onFollowStatChanged(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-static {p0}, Lcom/umeng/socialize/common/ResContainer;->get(Landroid/content/Context;)Lcom/umeng/socialize/common/ResContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    .line 111
    invoke-static {p0}, Lcom/umeng/socialize/utils/SocializeUtils;->isFloatWindowStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->E:Z

    .line 112
    iget-boolean v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->E:Z

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v3, "Theme.UMDefault"

    invoke-virtual {v0, v3}, Lcom/umeng/socialize/common/ResContainer;->style(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->setTheme(I)V

    .line 115
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    iput-object p0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->y:Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v3, "umeng_socialize_post_share"

    invoke-virtual {v0, v3}, Lcom/umeng/socialize/common/ResContainer;->layout(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->setContentView(I)V

    .line 118
    invoke-virtual {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 119
    const/16 v3, 0x10

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 121
    iget-boolean v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->E:Z

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->y:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/socialize/utils/SocializeUtils;->getFloatWindowSize(Landroid/content/Context;)[I

    move-result-object v3

    .line 123
    aget v4, v3, v2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 124
    aget v3, v3, v1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->k:Lcom/umeng/socialize/common/ResContainer;

    const-string v3, "umeng_socialize_share_root"

    invoke-virtual {v0, v3}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/editorpage/KeyboardListenRelativeLayout;

    iput-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->w:Lcom/umeng/socialize/editorpage/KeyboardListenRelativeLayout;

    .line 132
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->w:Lcom/umeng/socialize/editorpage/KeyboardListenRelativeLayout;

    new-instance v3, Lcom/umeng/socialize/editorpage/a;

    invoke-direct {v3, p0}, Lcom/umeng/socialize/editorpage/a;-><init>(Lcom/umeng/socialize/editorpage/ShareActivity;)V

    invoke-virtual {v0, v3}, Lcom/umeng/socialize/editorpage/KeyboardListenRelativeLayout;->a(Lcom/umeng/socialize/editorpage/KeyboardListenRelativeLayout$IOnKeyboardStateChangedListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    const-string v3, "media"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/umeng/socialize/editorpage/ShareActivity;->a(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->A:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 142
    iget-object v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->A:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v3, v4, :cond_3

    .line 143
    const/16 v3, 0x78

    sput v3, Lcom/umeng/socialize/editorpage/ShareActivity;->d:I

    .line 147
    :goto_0
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->e:Ljava/lang/String;

    .line 148
    const-string v3, "txt"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->f:Ljava/lang/String;

    .line 149
    const-string v3, "pic"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->g:Ljava/lang/String;

    .line 150
    const-string v3, "follow_"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->h:Z

    .line 151
    const-string v3, "at"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->i:Z

    .line 152
    iput-boolean v2, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->i:Z

    .line 153
    const-string v3, "location"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/umeng/socialize/Config;->ShareLocation:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->j:Z

    .line 155
    invoke-direct {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->c()V

    .line 157
    iget-boolean v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->j:Z

    if-eqz v0, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->b()V

    .line 160
    :cond_2
    return-void

    .line 145
    :cond_3
    const/16 v3, 0x8c

    sput v3, Lcom/umeng/socialize/editorpage/ShareActivity;->d:I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 153
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->B:Lcom/umeng/socialize/editorpage/location/a;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->B:Lcom/umeng/socialize/editorpage/location/a;

    invoke-virtual {v0}, Lcom/umeng/socialize/editorpage/location/a;->a()V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->H:Lcom/umeng/socialize/editorpage/location/b;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->H:Lcom/umeng/socialize/editorpage/location/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/editorpage/location/b;->cancel(Z)Z

    .line 422
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 423
    return-void
.end method

.method public onFollowStatChanged(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->v:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->h:Z

    .line 323
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 359
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 361
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/editorpage/ShareActivity;->setResult(I)V

    .line 363
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->j:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/umeng/socialize/editorpage/ShareActivity;->e()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/editorpage/ShareActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 411
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 412
    return-void
.end method
