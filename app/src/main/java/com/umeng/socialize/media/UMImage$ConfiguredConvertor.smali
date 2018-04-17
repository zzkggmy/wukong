.class abstract Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;
.super Ljava/lang/Object;
.source "UMImage.java"

# interfaces
.implements Lcom/umeng/socialize/media/UMImage$IImageConvertor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/media/UMImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ConfiguredConvertor"
.end annotation


# instance fields
.field public config:Lcom/umeng/socialize/media/UMImage$ConvertConfig;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;->config:Lcom/umeng/socialize/media/UMImage$ConvertConfig;

    return-void
.end method


# virtual methods
.method public setConfig(Lcom/umeng/socialize/media/UMImage$ConvertConfig;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/umeng/socialize/media/UMImage$ConfiguredConvertor;->config:Lcom/umeng/socialize/media/UMImage$ConvertConfig;

    .line 598
    return-void
.end method
