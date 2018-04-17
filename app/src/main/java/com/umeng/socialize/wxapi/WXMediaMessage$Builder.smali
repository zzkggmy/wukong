.class public Lcom/umeng/socialize/wxapi/WXMediaMessage$Builder;
.super Ljava/lang/Object;
.source "WXMediaMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/wxapi/WXMediaMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final KEY_IDENTIFIER:Ljava/lang/String; = "_wxobject_identifier_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/umeng/socialize/wxapi/WXMediaMessage;
    .locals 5
    .param p0, "var0"    # Landroid/os/Bundle;

    .prologue
    .line 110
    new-instance v0, Lcom/umeng/socialize/wxapi/WXMediaMessage;

    invoke-direct {v0}, Lcom/umeng/socialize/wxapi/WXMediaMessage;-><init>()V

    .local v0, "var1":Lcom/umeng/socialize/wxapi/WXMediaMessage;
    const-string v4, "_wxobject_sdkVer"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->sdkVer:I

    .line 111
    const-string v4, "_wxobject_title"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 112
    const-string v4, "_wxobject_description"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 113
    const-string v4, "_wxobject_thumbdata"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->thumbData:[B

    .line 114
    const-string v4, "_wxobject_mediatagname"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaTagName:Ljava/lang/String;

    .line 115
    const-string v4, "_wxobject_message_action"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->messageAction:Ljava/lang/String;

    .line 116
    const-string v4, "_wxobject_message_ext"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->messageExt:Ljava/lang/String;

    .line 118
    const-string v4, "_wxobject_identifier_"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/socialize/wxapi/WXMediaMessage$Builder;->pathOldToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "var2":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 120
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 121
    .local v2, "var3":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    iput-object v4, v0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaObject:Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    .line 122
    iget-object v4, v0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaObject:Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    invoke-interface {v4, p0}, Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;->unserialize(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v2    # "var3":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v3

    .line 125
    .local v3, "var4":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static pathNewToOld(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "var0"    # Ljava/lang/String;

    .prologue
    .line 135
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "com.tencent.mm.sdk.modelmsg"

    const-string v1, "com.tencent.mm.sdk.openapi"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 139
    .end local p0    # "var0":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static pathOldToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "var0"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "com.tencent.mm.sdk.openapi"

    const-string v1, "com.tencent.mm.sdk.modelmsg"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 148
    .end local p0    # "var0":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static toBundle(Lcom/umeng/socialize/wxapi/WXMediaMessage;)Landroid/os/Bundle;
    .locals 3
    .param p0, "var0"    # Lcom/umeng/socialize/wxapi/WXMediaMessage;

    .prologue
    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "var1":Landroid/os/Bundle;
    const-string v1, "_wxobject_sdkVer"

    iget v2, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->sdkVer:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string v1, "_wxobject_title"

    iget-object v2, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "_wxobject_description"

    iget-object v2, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "_wxobject_thumbdata"

    iget-object v2, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->thumbData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 97
    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaObject:Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "_wxobject_identifier_"

    iget-object v2, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaObject:Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/socialize/wxapi/WXMediaMessage$Builder;->pathNewToOld(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaObject:Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;

    invoke-interface {v1, v0}, Lcom/umeng/socialize/wxapi/WXMediaMessage$IMediaObject;->serialize(Landroid/os/Bundle;)V

    .line 102
    :cond_0
    const-string v1, "_wxobject_mediatagname"

    iget-object v2, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->mediaTagName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "_wxobject_message_action"

    iget-object v2, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->messageAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "_wxobject_message_ext"

    iget-object v2, p0, Lcom/umeng/socialize/wxapi/WXMediaMessage;->messageExt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-object v0
.end method
