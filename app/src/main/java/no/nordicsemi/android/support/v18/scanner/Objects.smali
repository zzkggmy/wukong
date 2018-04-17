.class Lno/nordicsemi/android/support/v18/scanner/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 36
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 37
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :cond_2
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 39
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 40
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [Z

    if-eqz v0, :cond_4

    instance-of v0, p1, [Z

    if-eqz v0, :cond_4

    .line 41
    check-cast p0, [Z

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [Z

    check-cast p1, [Z

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto :goto_0

    .line 42
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 43
    check-cast p0, [B

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [B

    check-cast p1, [B

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    .line 44
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [C

    if-eqz v0, :cond_6

    instance-of v0, p1, [C

    if-eqz v0, :cond_6

    .line 45
    check-cast p0, [C

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [C

    check-cast p1, [C

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    goto :goto_0

    .line 46
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [D

    if-eqz v0, :cond_7

    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    .line 47
    check-cast p0, [D

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [D

    check-cast p1, [D

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto :goto_0

    .line 48
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, [F

    if-eqz v0, :cond_8

    instance-of v0, p1, [F

    if-eqz v0, :cond_8

    .line 49
    check-cast p0, [F

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [F

    check-cast p1, [F

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0

    .line 50
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_8
    instance-of v0, p0, [I

    if-eqz v0, :cond_9

    instance-of v0, p1, [I

    if-eqz v0, :cond_9

    .line 51
    check-cast p0, [I

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [I

    check-cast p1, [I

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto/16 :goto_0

    .line 52
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [J

    if-eqz v0, :cond_a

    instance-of v0, p1, [J

    if-eqz v0, :cond_a

    .line 53
    check-cast p0, [J

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [J

    check-cast p1, [J

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto/16 :goto_0

    .line 54
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_a
    instance-of v0, p0, [S

    if-eqz v0, :cond_b

    instance-of v0, p1, [S

    if-eqz v0, :cond_b

    .line 55
    check-cast p0, [S

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p0, [S

    check-cast p1, [S

    .end local p1    # "b":Ljava/lang/Object;
    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    goto/16 :goto_0

    .line 57
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 64
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static varargs hash([Ljava/lang/Object;)I
    .locals 1
    .param p0, "values"    # [Ljava/lang/Object;

    .prologue
    .line 73
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 80
    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
