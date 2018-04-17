.class synthetic Lcom/umeng/socialize/common/SocialResHelper$1;
.super Ljava/lang/Object;
.source "SocialResHelper.java"


# static fields
.field static final synthetic $SwitchMap$com$umeng$socialize$common$SocialResHelper$LoadMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 396
    invoke-static {}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->values()[Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/umeng/socialize/common/SocialResHelper$1;->$SwitchMap$com$umeng$socialize$common$SocialResHelper$LoadMode:[I

    :try_start_0
    sget-object v0, Lcom/umeng/socialize/common/SocialResHelper$1;->$SwitchMap$com$umeng$socialize$common$SocialResHelper$LoadMode:[I

    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_CACHE_ONLY:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-virtual {v1}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/umeng/socialize/common/SocialResHelper$1;->$SwitchMap$com$umeng$socialize$common$SocialResHelper$LoadMode:[I

    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_CACHE_ELSE_NETWORK:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-virtual {v1}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/umeng/socialize/common/SocialResHelper$1;->$SwitchMap$com$umeng$socialize$common$SocialResHelper$LoadMode:[I

    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_NETWORK_ELSE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-virtual {v1}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
