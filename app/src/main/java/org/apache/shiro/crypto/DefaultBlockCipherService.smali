.class public Lorg/apache/shiro/crypto/DefaultBlockCipherService;
.super Lorg/apache/shiro/crypto/AbstractSymmetricCipherService;
.source "DefaultBlockCipherService.java"


# static fields
.field private static final DEFAULT_BLOCK_SIZE:I = 0x0

.field private static final DEFAULT_STREAMING_BLOCK_SIZE:I = 0x8

.field private static final TRANSFORMATION_STRING_DELIMITER:Ljava/lang/String; = "/"


# instance fields
.field private blockSize:I

.field private modeName:Ljava/lang/String;

.field private paddingSchemeName:Ljava/lang/String;

.field private streamingBlockSize:I

.field private streamingModeName:Ljava/lang/String;

.field private streamingPaddingSchemeName:Ljava/lang/String;

.field private streamingTransformationString:Ljava/lang/String;

.field private transformationString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithmName"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lorg/apache/shiro/crypto/AbstractSymmetricCipherService;-><init>(Ljava/lang/String;)V

    .line 167
    sget-object v0, Lorg/apache/shiro/crypto/OperationMode;->CBC:Lorg/apache/shiro/crypto/OperationMode;

    invoke-virtual {v0}, Lorg/apache/shiro/crypto/OperationMode;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->modeName:Ljava/lang/String;

    .line 168
    sget-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->PKCS5:Lorg/apache/shiro/crypto/PaddingScheme;

    invoke-virtual {v0}, Lorg/apache/shiro/crypto/PaddingScheme;->getTransformationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->paddingSchemeName:Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->blockSize:I

    .line 171
    sget-object v0, Lorg/apache/shiro/crypto/OperationMode;->CBC:Lorg/apache/shiro/crypto/OperationMode;

    invoke-virtual {v0}, Lorg/apache/shiro/crypto/OperationMode;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingModeName:Ljava/lang/String;

    .line 172
    sget-object v0, Lorg/apache/shiro/crypto/PaddingScheme;->PKCS5:Lorg/apache/shiro/crypto/PaddingScheme;

    invoke-virtual {v0}, Lorg/apache/shiro/crypto/PaddingScheme;->getTransformationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingPaddingSchemeName:Ljava/lang/String;

    .line 173
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingBlockSize:I

    .line 174
    return-void
.end method

.method private buildStreamingTransformationString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 463
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->getStreamingModeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->getStreamingPaddingSchemeName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->buildTransformationString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildTransformationString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 459
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->getModeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->getPaddingSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->getBlockSize()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->buildTransformationString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildTransformationString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "modeName"    # Ljava/lang/String;
    .param p2, "paddingSchemeName"    # Ljava/lang/String;
    .param p3, "blockSize"    # I

    .prologue
    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_0
    if-lez p3, :cond_1

    .line 472
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    :cond_1
    invoke-static {p2}, Lorg/apache/shiro/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isModeInitializationVectorCompatible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 489
    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/shiro/crypto/OperationMode;->ECB:Lorg/apache/shiro/crypto/OperationMode;

    invoke-virtual {v0}, Lorg/apache/shiro/crypto/OperationMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/shiro/crypto/OperationMode;->NONE:Lorg/apache/shiro/crypto/OperationMode;

    invoke-virtual {v0}, Lorg/apache/shiro/crypto/OperationMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isModeStreamingCompatible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 379
    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/shiro/crypto/OperationMode;->ECB:Lorg/apache/shiro/crypto/OperationMode;

    invoke-virtual {v0}, Lorg/apache/shiro/crypto/OperationMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/shiro/crypto/OperationMode;->NONE:Lorg/apache/shiro/crypto/OperationMode;

    invoke-virtual {v0}, Lorg/apache/shiro/crypto/OperationMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected generateInitializationVector(Z)[B
    .locals 5
    .param p1, "streaming"    # Z

    .prologue
    .line 512
    if-eqz p1, :cond_0

    .line 513
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->getStreamingModeName()Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "streamingModeName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->isModeInitializationVectorCompatible(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "streamingMode attribute value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] does not support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Initialization Vectors.  Ensure the streamingMode value represents an operation mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "that is compatible with initialization vectors."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 521
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "streamingModeName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->getModeName()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "modeName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->isModeInitializationVectorCompatible(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mode attribute value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] does not support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Initialization Vectors.  Ensure the mode value represents an operation mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "that is compatible with initialization vectors."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    .restart local v1    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 529
    .end local v0    # "modeName":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/shiro/crypto/AbstractSymmetricCipherService;->generateInitializationVector(Z)[B

    move-result-object v3

    return-object v3
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->blockSize:I

    return v0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->modeName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaddingSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->paddingSchemeName:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamingBlockSize()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingBlockSize:I

    return v0
.end method

.method public getStreamingModeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingModeName:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamingPaddingSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingPaddingSchemeName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTransformationString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "streaming"    # Z

    .prologue
    .line 445
    if-eqz p1, :cond_1

    .line 446
    iget-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingTransformationString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 447
    invoke-direct {p0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->buildStreamingTransformationString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingTransformationString:Ljava/lang/String;

    .line 449
    :cond_0
    iget-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingTransformationString:Ljava/lang/String;

    .line 454
    :goto_0
    return-object v0

    .line 451
    :cond_1
    iget-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->transformationString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 452
    invoke-direct {p0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->buildTransformationString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->transformationString:Ljava/lang/String;

    .line 454
    :cond_2
    iget-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->transformationString:Ljava/lang/String;

    goto :goto_0
.end method

.method protected isGenerateInitializationVectors(Z)Z
    .locals 1
    .param p1, "streaming"    # Z

    .prologue
    .line 507
    if-nez p1, :cond_0

    invoke-super {p0}, Lorg/apache/shiro/crypto/AbstractSymmetricCipherService;->isGenerateInitializationVectors()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->getModeName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->isModeInitializationVectorCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBlockSize(I)V
    .locals 1
    .param p1, "blockSize"    # I

    .prologue
    .line 358
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->blockSize:I

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->transformationString:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setMode(Lorg/apache/shiro/crypto/OperationMode;)V
    .locals 1
    .param p1, "mode"    # Lorg/apache/shiro/crypto/OperationMode;

    .prologue
    .line 243
    invoke-virtual {p1}, Lorg/apache/shiro/crypto/OperationMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->setModeName(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .locals 1
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->modeName:Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->transformationString:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setPaddingScheme(Lorg/apache/shiro/crypto/PaddingScheme;)V
    .locals 1
    .param p1, "paddingScheme"    # Lorg/apache/shiro/crypto/PaddingScheme;

    .prologue
    .line 315
    invoke-virtual {p1}, Lorg/apache/shiro/crypto/PaddingScheme;->getTransformationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->setPaddingSchemeName(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public setPaddingSchemeName(Ljava/lang/String;)V
    .locals 1
    .param p1, "paddingSchemeName"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->paddingSchemeName:Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->transformationString:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setStreamingBlockSize(I)V
    .locals 1
    .param p1, "streamingBlockSize"    # I

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingBlockSize:I

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingTransformationString:Ljava/lang/String;

    .line 432
    return-void
.end method

.method public setStreamingMode(Lorg/apache/shiro/crypto/OperationMode;)V
    .locals 1
    .param p1, "mode"    # Lorg/apache/shiro/crypto/OperationMode;

    .prologue
    .line 407
    invoke-virtual {p1}, Lorg/apache/shiro/crypto/OperationMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->setStreamingModeName(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public setStreamingModeName(Ljava/lang/String;)V
    .locals 3
    .param p1, "streamingModeName"    # Ljava/lang/String;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->isModeStreamingCompatible(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a valid operation mode for block cipher streaming."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingModeName:Ljava/lang/String;

    .line 397
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingTransformationString:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setStreamingPaddingScheme(Lorg/apache/shiro/crypto/PaddingScheme;)V
    .locals 1
    .param p1, "scheme"    # Lorg/apache/shiro/crypto/PaddingScheme;

    .prologue
    .line 421
    invoke-virtual {p1}, Lorg/apache/shiro/crypto/PaddingScheme;->getTransformationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->setStreamingPaddingSchemeName(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public setStreamingPaddingSchemeName(Ljava/lang/String;)V
    .locals 1
    .param p1, "streamingPaddingSchemeName"    # Ljava/lang/String;

    .prologue
    .line 415
    iput-object p1, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingPaddingSchemeName:Ljava/lang/String;

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/shiro/crypto/DefaultBlockCipherService;->streamingTransformationString:Ljava/lang/String;

    .line 418
    return-void
.end method
