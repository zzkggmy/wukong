.class public final enum Lorg/apache/shiro/authz/annotation/Logical;
.super Ljava/lang/Enum;
.source "Logical.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/shiro/authz/annotation/Logical;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/shiro/authz/annotation/Logical;

.field public static final enum AND:Lorg/apache/shiro/authz/annotation/Logical;

.field public static final enum OR:Lorg/apache/shiro/authz/annotation/Logical;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lorg/apache/shiro/authz/annotation/Logical;

    const-string v1, "AND"

    invoke-direct {v0, v1, v2}, Lorg/apache/shiro/authz/annotation/Logical;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/authz/annotation/Logical;->AND:Lorg/apache/shiro/authz/annotation/Logical;

    new-instance v0, Lorg/apache/shiro/authz/annotation/Logical;

    const-string v1, "OR"

    invoke-direct {v0, v1, v3}, Lorg/apache/shiro/authz/annotation/Logical;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/shiro/authz/annotation/Logical;->OR:Lorg/apache/shiro/authz/annotation/Logical;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/shiro/authz/annotation/Logical;

    sget-object v1, Lorg/apache/shiro/authz/annotation/Logical;->AND:Lorg/apache/shiro/authz/annotation/Logical;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/shiro/authz/annotation/Logical;->OR:Lorg/apache/shiro/authz/annotation/Logical;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/shiro/authz/annotation/Logical;->$VALUES:[Lorg/apache/shiro/authz/annotation/Logical;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/shiro/authz/annotation/Logical;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lorg/apache/shiro/authz/annotation/Logical;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/shiro/authz/annotation/Logical;

    return-object v0
.end method

.method public static values()[Lorg/apache/shiro/authz/annotation/Logical;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/apache/shiro/authz/annotation/Logical;->$VALUES:[Lorg/apache/shiro/authz/annotation/Logical;

    invoke-virtual {v0}, [Lorg/apache/shiro/authz/annotation/Logical;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/shiro/authz/annotation/Logical;

    return-object v0
.end method
