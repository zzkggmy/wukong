.class public Lorg/apache/shiro/authc/UsernamePasswordToken;
.super Ljava/lang/Object;
.source "UsernamePasswordToken.java"

# interfaces
.implements Lorg/apache/shiro/authc/HostAuthenticationToken;
.implements Lorg/apache/shiro/authc/RememberMeAuthenticationToken;


# instance fields
.field private host:Ljava/lang/String;

.field private password:[C

.field private rememberMe:Z

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->rememberMe:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 111
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lorg/apache/shiro/authc/UsernamePasswordToken;-><init>(Ljava/lang/String;[CZLjava/lang/String;)V

    .line 112
    return-void

    :cond_0
    move-object v0, v1

    .line 111
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    .line 141
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/apache/shiro/authc/UsernamePasswordToken;-><init>(Ljava/lang/String;[CZLjava/lang/String;)V

    .line 142
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "rememberMe"    # Z

    .prologue
    const/4 v1, 0x0

    .line 171
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0, p3, v1}, Lorg/apache/shiro/authc/UsernamePasswordToken;-><init>(Ljava/lang/String;[CZLjava/lang/String;)V

    .line 172
    return-void

    :cond_0
    move-object v0, v1

    .line 171
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "rememberMe"    # Z
    .param p4, "host"    # Ljava/lang/String;

    .prologue
    .line 210
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lorg/apache/shiro/authc/UsernamePasswordToken;-><init>(Ljava/lang/String;[CZLjava/lang/String;)V

    .line 211
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/shiro/authc/UsernamePasswordToken;-><init>(Ljava/lang/String;[CZLjava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLjava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/shiro/authc/UsernamePasswordToken;-><init>(Ljava/lang/String;[CZLjava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CZ)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "rememberMe"    # Z

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/shiro/authc/UsernamePasswordToken;-><init>(Ljava/lang/String;[CZLjava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CZLjava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "rememberMe"    # Z
    .param p4, "host"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->rememberMe:Z

    .line 187
    iput-object p1, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->username:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->password:[C

    .line 189
    iput-boolean p3, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->rememberMe:Z

    .line 190
    iput-object p4, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->host:Ljava/lang/String;

    .line 191
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 336
    iput-object v2, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->username:Ljava/lang/String;

    .line 337
    iput-object v2, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->host:Ljava/lang/String;

    .line 338
    iput-boolean v3, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->rememberMe:Z

    .line 340
    iget-object v1, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->password:[C

    if-eqz v1, :cond_1

    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->password:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 342
    iget-object v1, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->password:[C

    aput-char v3, v1, v0

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    iput-object v2, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->password:[C

    .line 347
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getCredentials()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/apache/shiro/authc/UsernamePasswordToken;->getPassword()[C

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->password:[C

    return-object v0
.end method

.method public getPrincipal()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/apache/shiro/authc/UsernamePasswordToken;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isRememberMe()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->rememberMe:Z

    return v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->host:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setPassword([C)V
    .locals 0
    .param p1, "password"    # [C

    .prologue
    .line 251
    iput-object p1, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->password:[C

    .line 252
    return-void
.end method

.method public setRememberMe(Z)V
    .locals 0
    .param p1, "rememberMe"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->rememberMe:Z

    .line 325
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->username:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v1, ", rememberMe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->rememberMe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 363
    iget-object v1, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->host:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 364
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/shiro/authc/UsernamePasswordToken;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
