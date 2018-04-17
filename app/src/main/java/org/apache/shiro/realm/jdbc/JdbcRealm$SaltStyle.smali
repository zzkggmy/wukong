.class public final enum Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;
.super Ljava/lang/Enum;
.source "JdbcRealm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/realm/jdbc/JdbcRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SaltStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

.field public static final enum COLUMN:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

.field public static final enum CRYPT:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

.field public static final enum EXTERNAL:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

.field public static final enum NO_SALT:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    const-string v1, "NO_SALT"

    invoke-direct {v0, v1, v2}, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->NO_SALT:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    new-instance v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    const-string v1, "CRYPT"

    invoke-direct {v0, v1, v3}, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->CRYPT:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    new-instance v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    const-string v1, "COLUMN"

    invoke-direct {v0, v1, v4}, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->COLUMN:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    new-instance v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v5}, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->EXTERNAL:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    sget-object v1, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->NO_SALT:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->CRYPT:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->COLUMN:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->EXTERNAL:Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->$VALUES:[Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    const-class v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    return-object v0
.end method

.method public static values()[Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->$VALUES:[Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    invoke-virtual {v0}, [Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/shiro/realm/jdbc/JdbcRealm$SaltStyle;

    return-object v0
.end method
