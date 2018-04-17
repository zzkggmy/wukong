.class Lorg/apache/shiro/util/SoftHashMap$SoftValue;
.super Ljava/lang/ref/SoftReference;
.source "SoftHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/shiro/util/SoftHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap$SoftValue;, "Lorg/apache/shiro/util/SoftHashMap$SoftValue<TV;TK;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TV;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 315
    iput-object p2, p0, Lorg/apache/shiro/util/SoftHashMap$SoftValue;->key:Ljava/lang/Object;

    .line 316
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/shiro/util/SoftHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/ref/ReferenceQueue;
    .param p4, "x3"    # Lorg/apache/shiro/util/SoftHashMap$1;

    .prologue
    .line 301
    .local p0, "this":Lorg/apache/shiro/util/SoftHashMap$SoftValue;, "Lorg/apache/shiro/util/SoftHashMap$SoftValue<TV;TK;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/shiro/util/SoftHashMap$SoftValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/shiro/util/SoftHashMap$SoftValue;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/shiro/util/SoftHashMap$SoftValue;

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/shiro/util/SoftHashMap$SoftValue;->key:Ljava/lang/Object;

    return-object v0
.end method
