.class public Lorg/apache/shiro/util/JdbcUtils;
.super Ljava/lang/Object;
.source "JdbcUtils.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/shiro/util/JdbcUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/shiro/util/JdbcUtils;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static closeConnection(Ljava/sql/Connection;)V
    .locals 3
    .param p0, "connection"    # Ljava/sql/Connection;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    .line 58
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/sql/SQLException;
    sget-object v1, Lorg/apache/shiro/util/JdbcUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Lorg/apache/shiro/util/JdbcUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Could not close JDBC Connection"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    .end local v0    # "ex":Ljava/sql/SQLException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v1, Lorg/apache/shiro/util/JdbcUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    sget-object v1, Lorg/apache/shiro/util/JdbcUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected exception on closing JDBC Connection"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeResultSet(Ljava/sql/ResultSet;)V
    .locals 3
    .param p0, "rs"    # Ljava/sql/ResultSet;

    .prologue
    .line 100
    if-eqz p0, :cond_0

    .line 102
    :try_start_0
    invoke-interface {p0}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/sql/SQLException;
    sget-object v1, Lorg/apache/shiro/util/JdbcUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    sget-object v1, Lorg/apache/shiro/util/JdbcUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Could not close JDBC ResultSet"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    .end local v0    # "ex":Ljava/sql/SQLException;
    :catch_1
    move-exception v0

    .line 108
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v1, Lorg/apache/shiro/util/JdbcUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    sget-object v1, Lorg/apache/shiro/util/JdbcUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected exception on closing JDBC ResultSet"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeStatement(Ljava/sql/Statement;)V
    .locals 3
    .param p0, "statement"    # Ljava/sql/Statement;

    .prologue
    .line 78
    if-eqz p0, :cond_0

    .line 80
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "ex":Ljava/sql/SQLException;
    sget-object v1, Lorg/apache/shiro/util/JdbcUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lorg/apache/shiro/util/JdbcUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Could not close JDBC Statement"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    .end local v0    # "ex":Ljava/sql/SQLException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v1, Lorg/apache/shiro/util/JdbcUtils;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Lorg/apache/shiro/util/JdbcUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Unexpected exception on closing JDBC Statement"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
