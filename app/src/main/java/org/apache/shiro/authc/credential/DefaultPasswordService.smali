.class public Lorg/apache/shiro/authc/credential/DefaultPasswordService;
.super Ljava/lang/Object;
.source "DefaultPasswordService.java"

# interfaces
.implements Lorg/apache/shiro/authc/credential/HashingPasswordService;


# static fields
.field public static final DEFAULT_HASH_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field public static final DEFAULT_HASH_ITERATIONS:I = 0x7a120

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private hashFormat:Lorg/apache/shiro/crypto/hash/format/HashFormat;

.field private hashFormatFactory:Lorg/apache/shiro/crypto/hash/format/HashFormatFactory;

.field private volatile hashFormatWarned:Z

.field private hashService:Lorg/apache/shiro/crypto/hash/HashService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashFormatWarned:Z

    .line 57
    new-instance v0, Lorg/apache/shiro/crypto/hash/DefaultHashService;

    invoke-direct {v0}, Lorg/apache/shiro/crypto/hash/DefaultHashService;-><init>()V

    .line 58
    .local v0, "hashService":Lorg/apache/shiro/crypto/hash/DefaultHashService;
    const-string v1, "SHA-256"

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/DefaultHashService;->setHashAlgorithmName(Ljava/lang/String;)V

    .line 59
    const v1, 0x7a120

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/DefaultHashService;->setHashIterations(I)V

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/DefaultHashService;->setGeneratePublicSalt(Z)V

    .line 61
    iput-object v0, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashService:Lorg/apache/shiro/crypto/hash/HashService;

    .line 63
    new-instance v1, Lorg/apache/shiro/crypto/hash/format/Shiro1CryptFormat;

    invoke-direct {v1}, Lorg/apache/shiro/crypto/hash/format/Shiro1CryptFormat;-><init>()V

    iput-object v1, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashFormat:Lorg/apache/shiro/crypto/hash/format/HashFormat;

    .line 64
    new-instance v1, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;

    invoke-direct {v1}, Lorg/apache/shiro/crypto/hash/format/DefaultHashFormatFactory;-><init>()V

    iput-object v1, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashFormatFactory:Lorg/apache/shiro/crypto/hash/format/HashFormatFactory;

    .line 65
    return-void
.end method


# virtual methods
.method protected buildHashRequest(Lorg/apache/shiro/util/ByteSource;Lorg/apache/shiro/crypto/hash/Hash;)Lorg/apache/shiro/crypto/hash/HashRequest;
    .locals 2
    .param p1, "plaintext"    # Lorg/apache/shiro/util/ByteSource;
    .param p2, "saved"    # Lorg/apache/shiro/crypto/hash/Hash;

    .prologue
    .line 169
    new-instance v0, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;

    invoke-direct {v0}, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->setSource(Lorg/apache/shiro/util/ByteSource;)Lorg/apache/shiro/crypto/hash/HashRequest$Builder;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/shiro/crypto/hash/Hash;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->setAlgorithmName(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/HashRequest$Builder;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/shiro/crypto/hash/Hash;->getSalt()Lorg/apache/shiro/util/ByteSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->setSalt(Lorg/apache/shiro/util/ByteSource;)Lorg/apache/shiro/crypto/hash/HashRequest$Builder;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/shiro/crypto/hash/Hash;->getIterations()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->setIterations(I)Lorg/apache/shiro/crypto/hash/HashRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->build()Lorg/apache/shiro/crypto/hash/HashRequest;

    move-result-object v0

    return-object v0
.end method

.method protected checkHashFormatDurability()V
    .locals 4

    .prologue
    .line 102
    iget-boolean v2, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashFormatWarned:Z

    if-nez v2, :cond_0

    .line 104
    iget-object v0, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashFormat:Lorg/apache/shiro/crypto/hash/format/HashFormat;

    .line 106
    .local v0, "format":Lorg/apache/shiro/crypto/hash/format/HashFormat;
    instance-of v2, v0, Lorg/apache/shiro/crypto/hash/format/ParsableHashFormat;

    if-nez v2, :cond_0

    sget-object v2, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The configured hashFormat instance ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/apache/shiro/crypto/hash/format/ParsableHashFormat;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " implementation.  This is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "required if you wish to support backwards compatibility for saved password checking (almost "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "always desirable).  Without a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/apache/shiro/crypto/hash/format/ParsableHashFormat;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instance, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "any hashService configuration changes will break previously hashed/saved passwords."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashFormatWarned:Z

    .line 116
    .end local v0    # "format":Lorg/apache/shiro/crypto/hash/format/HashFormat;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected createByteSource(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 123
    invoke-static {p1}, Lorg/apache/shiro/util/ByteSource$Util;->bytes(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method protected createHashRequest(Lorg/apache/shiro/util/ByteSource;)Lorg/apache/shiro/crypto/hash/HashRequest;
    .locals 1
    .param p1, "plaintext"    # Lorg/apache/shiro/util/ByteSource;

    .prologue
    .line 119
    new-instance v0, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;

    invoke-direct {v0}, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->setSource(Lorg/apache/shiro/util/ByteSource;)Lorg/apache/shiro/crypto/hash/HashRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/shiro/crypto/hash/HashRequest$Builder;->build()Lorg/apache/shiro/crypto/hash/HashRequest;

    move-result-object v0

    return-object v0
.end method

.method public encryptPassword(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "plaintext"    # Ljava/lang/Object;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashPassword(Ljava/lang/Object;)Lorg/apache/shiro/crypto/hash/Hash;

    move-result-object v0

    .line 69
    .local v0, "hash":Lorg/apache/shiro/crypto/hash/Hash;
    invoke-virtual {p0}, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->checkHashFormatDurability()V

    .line 70
    iget-object v1, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashFormat:Lorg/apache/shiro/crypto/hash/format/HashFormat;

    invoke-interface {v1, v0}, Lorg/apache/shiro/crypto/hash/format/HashFormat;->format(Lorg/apache/shiro/crypto/hash/Hash;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHashFormat()Lorg/apache/shiro/crypto/hash/format/HashFormat;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashFormat:Lorg/apache/shiro/crypto/hash/format/HashFormat;

    return-object v0
.end method

.method public getHashFormatFactory()Lorg/apache/shiro/crypto/hash/format/HashFormatFactory;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashFormatFactory:Lorg/apache/shiro/crypto/hash/format/HashFormatFactory;

    return-object v0
.end method

.method public getHashService()Lorg/apache/shiro/crypto/hash/HashService;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashService:Lorg/apache/shiro/crypto/hash/HashService;

    return-object v0
.end method

.method public hashPassword(Ljava/lang/Object;)Lorg/apache/shiro/crypto/hash/Hash;
    .locals 3
    .param p1, "plaintext"    # Ljava/lang/Object;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->createByteSource(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;

    move-result-object v0

    .line 75
    .local v0, "plaintextBytes":Lorg/apache/shiro/util/ByteSource;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/shiro/util/ByteSource;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    :cond_0
    const/4 v2, 0x0

    .line 79
    :goto_0
    return-object v2

    .line 78
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->createHashRequest(Lorg/apache/shiro/util/ByteSource;)Lorg/apache/shiro/crypto/hash/HashRequest;

    move-result-object v1

    .line 79
    .local v1, "request":Lorg/apache/shiro/crypto/hash/HashRequest;
    iget-object v2, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashService:Lorg/apache/shiro/crypto/hash/HashService;

    invoke-interface {v2, v1}, Lorg/apache/shiro/crypto/hash/HashService;->computeHash(Lorg/apache/shiro/crypto/hash/HashRequest;)Lorg/apache/shiro/crypto/hash/Hash;

    move-result-object v2

    goto :goto_0
.end method

.method public passwordsMatch(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 9
    .param p1, "submittedPlaintext"    # Ljava/lang/Object;
    .param p2, "saved"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 127
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->createByteSource(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;

    move-result-object v4

    .line 129
    .local v4, "plaintextBytes":Lorg/apache/shiro/util/ByteSource;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 130
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/apache/shiro/util/ByteSource;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const/4 v7, 0x1

    .line 164
    :cond_2
    :goto_0
    return v7

    .line 132
    :cond_3
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/apache/shiro/util/ByteSource;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 142
    iget-object v7, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashFormatFactory:Lorg/apache/shiro/crypto/hash/format/HashFormatFactory;

    invoke-interface {v7, p2}, Lorg/apache/shiro/crypto/hash/format/HashFormatFactory;->getInstance(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/format/HashFormat;

    move-result-object v1

    .line 144
    .local v1, "discoveredFormat":Lorg/apache/shiro/crypto/hash/format/HashFormat;
    if-eqz v1, :cond_4

    instance-of v7, v1, Lorg/apache/shiro/crypto/hash/format/ParsableHashFormat;

    if-eqz v7, :cond_4

    move-object v3, v1

    .line 146
    check-cast v3, Lorg/apache/shiro/crypto/hash/format/ParsableHashFormat;

    .line 147
    .local v3, "parsableHashFormat":Lorg/apache/shiro/crypto/hash/format/ParsableHashFormat;
    invoke-interface {v3, p2}, Lorg/apache/shiro/crypto/hash/format/ParsableHashFormat;->parse(Ljava/lang/String;)Lorg/apache/shiro/crypto/hash/Hash;

    move-result-object v6

    .line 149
    .local v6, "savedHash":Lorg/apache/shiro/crypto/hash/Hash;
    invoke-virtual {p0, p1, v6}, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->passwordsMatch(Ljava/lang/Object;Lorg/apache/shiro/crypto/hash/Hash;)Z

    move-result v7

    goto :goto_0

    .line 160
    .end local v3    # "parsableHashFormat":Lorg/apache/shiro/crypto/hash/format/ParsableHashFormat;
    .end local v6    # "savedHash":Lorg/apache/shiro/crypto/hash/Hash;
    :cond_4
    invoke-virtual {p0, v4}, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->createHashRequest(Lorg/apache/shiro/util/ByteSource;)Lorg/apache/shiro/crypto/hash/HashRequest;

    move-result-object v5

    .line 161
    .local v5, "request":Lorg/apache/shiro/crypto/hash/HashRequest;
    iget-object v7, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashService:Lorg/apache/shiro/crypto/hash/HashService;

    invoke-interface {v7, v5}, Lorg/apache/shiro/crypto/hash/HashService;->computeHash(Lorg/apache/shiro/crypto/hash/HashRequest;)Lorg/apache/shiro/crypto/hash/Hash;

    move-result-object v0

    .line 162
    .local v0, "computed":Lorg/apache/shiro/crypto/hash/Hash;
    iget-object v7, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashFormat:Lorg/apache/shiro/crypto/hash/format/HashFormat;

    invoke-interface {v7, v0}, Lorg/apache/shiro/crypto/hash/format/HashFormat;->format(Lorg/apache/shiro/crypto/hash/Hash;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "formatted":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0
.end method

.method public passwordsMatch(Ljava/lang/Object;Lorg/apache/shiro/crypto/hash/Hash;)Z
    .locals 5
    .param p1, "plaintext"    # Ljava/lang/Object;
    .param p2, "saved"    # Lorg/apache/shiro/crypto/hash/Hash;

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->createByteSource(Ljava/lang/Object;)Lorg/apache/shiro/util/ByteSource;

    move-result-object v1

    .line 85
    .local v1, "plaintextBytes":Lorg/apache/shiro/util/ByteSource;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lorg/apache/shiro/crypto/hash/Hash;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/shiro/util/ByteSource;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 97
    :cond_2
    :goto_0
    return v3

    .line 88
    :cond_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/shiro/util/ByteSource;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    invoke-virtual {p0, v1, p2}, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->buildHashRequest(Lorg/apache/shiro/util/ByteSource;Lorg/apache/shiro/crypto/hash/Hash;)Lorg/apache/shiro/crypto/hash/HashRequest;

    move-result-object v2

    .line 95
    .local v2, "request":Lorg/apache/shiro/crypto/hash/HashRequest;
    iget-object v3, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashService:Lorg/apache/shiro/crypto/hash/HashService;

    invoke-interface {v3, v2}, Lorg/apache/shiro/crypto/hash/HashService;->computeHash(Lorg/apache/shiro/crypto/hash/HashRequest;)Lorg/apache/shiro/crypto/hash/Hash;

    move-result-object v0

    .line 97
    .local v0, "computed":Lorg/apache/shiro/crypto/hash/Hash;
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public setHashFormat(Lorg/apache/shiro/crypto/hash/format/HashFormat;)V
    .locals 0
    .param p1, "hashFormat"    # Lorg/apache/shiro/crypto/hash/format/HashFormat;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashFormat:Lorg/apache/shiro/crypto/hash/format/HashFormat;

    .line 191
    return-void
.end method

.method public setHashFormatFactory(Lorg/apache/shiro/crypto/hash/format/HashFormatFactory;)V
    .locals 0
    .param p1, "hashFormatFactory"    # Lorg/apache/shiro/crypto/hash/format/HashFormatFactory;

    .prologue
    .line 198
    iput-object p1, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashFormatFactory:Lorg/apache/shiro/crypto/hash/format/HashFormatFactory;

    .line 199
    return-void
.end method

.method public setHashService(Lorg/apache/shiro/crypto/hash/HashService;)V
    .locals 0
    .param p1, "hashService"    # Lorg/apache/shiro/crypto/hash/HashService;

    .prologue
    .line 182
    iput-object p1, p0, Lorg/apache/shiro/authc/credential/DefaultPasswordService;->hashService:Lorg/apache/shiro/crypto/hash/HashService;

    .line 183
    return-void
.end method
