.class final Lorg/codehaus/jackson/map/util/Comparators$1;
.super Ljava/lang/Object;
.source "Comparators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codehaus/jackson/map/util/Comparators;->getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$defaultValue:Ljava/lang/Object;

.field final synthetic val$length:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lorg/codehaus/jackson/map/util/Comparators$1;->val$defaultValue:Ljava/lang/Object;

    iput p2, p0, Lorg/codehaus/jackson/map/util/Comparators$1;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 28
    if-ne p1, p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v3

    .line 29
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lorg/codehaus/jackson/map/util/Comparators$1;->val$defaultValue:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_3

    :cond_2
    move v3, v4

    .line 30
    goto :goto_0

    .line 32
    :cond_3
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    iget v6, p0, Lorg/codehaus/jackson/map/util/Comparators$1;->val$length:I

    if-eq v5, v6, :cond_4

    move v3, v4

    goto :goto_0

    .line 34
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v5, p0, Lorg/codehaus/jackson/map/util/Comparators$1;->val$length:I

    if-ge v0, v5, :cond_0

    .line 35
    iget-object v5, p0, Lorg/codehaus/jackson/map/util/Comparators$1;->val$defaultValue:Ljava/lang/Object;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "value1":Ljava/lang/Object;
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 37
    .local v2, "value2":Ljava/lang/Object;
    if-ne v1, v2, :cond_6

    .line 34
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_6
    if-eqz v1, :cond_5

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v4

    .line 40
    goto :goto_0
.end method
