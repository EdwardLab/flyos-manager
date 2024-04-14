.class public Lgnu/kawa/functions/IsEqual;
.super Lgnu/mapping/Procedure2;
.source "IsEqual.java"


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 14
    iput-object p1, p0, Lgnu/kawa/functions/IsEqual;->language:Lgnu/expr/Language;

    .line 15
    invoke-virtual {p0, p2}, Lgnu/kawa/functions/IsEqual;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_15

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 33
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 34
    check-cast p0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1}, Lgnu/kawa/functions/IsEqual;->numberEquals(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    return p0

    .line 38
    :cond_2
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    .line 40
    instance-of v2, p1, Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    return v1

    .line 42
    :cond_3
    check-cast p0, Ljava/lang/CharSequence;

    .line 43
    check-cast p1, Ljava/lang/CharSequence;

    .line 44
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 45
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_5

    .line 50
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_4

    return v1

    :cond_5
    return v0

    .line 87
    :cond_6
    instance-of v2, p0, Lgnu/lists/FVector;

    if-eqz v2, :cond_c

    .line 89
    instance-of v2, p1, Lgnu/lists/FVector;

    if-nez v2, :cond_7

    return v1

    .line 91
    :cond_7
    check-cast p0, Lgnu/lists/FVector;

    .line 92
    check-cast p1, Lgnu/lists/FVector;

    .line 93
    iget v2, p0, Lgnu/lists/FVector;->size:I

    .line 94
    iget-object v3, p1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    if-eqz v3, :cond_b

    iget v3, p1, Lgnu/lists/FVector;->size:I

    if-eq v3, v2, :cond_8

    goto :goto_0

    .line 96
    :cond_8
    iget-object p0, p0, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 97
    iget-object p1, p1, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    :cond_9
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_a

    .line 100
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v1

    :cond_a
    return v0

    :cond_b
    :goto_0
    return v1

    .line 105
    :cond_c
    instance-of v2, p0, Lgnu/lists/LList;

    if-eqz v2, :cond_14

    .line 107
    instance-of v2, p0, Lgnu/lists/Pair;

    if-eqz v2, :cond_13

    instance-of v2, p1, Lgnu/lists/Pair;

    if-nez v2, :cond_d

    goto :goto_3

    .line 109
    :cond_d
    check-cast p0, Lgnu/lists/Pair;

    .line 110
    check-cast p1, Lgnu/lists/Pair;

    .line 113
    :goto_1
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 114
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 115
    invoke-static {v2, v3}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 117
    :cond_e
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .line 118
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_f

    return v0

    :cond_f
    if-eqz p0, :cond_13

    if-nez p1, :cond_10

    goto :goto_3

    .line 123
    :cond_10
    instance-of v2, p0, Lgnu/lists/Pair;

    if-eqz v2, :cond_12

    instance-of v2, p1, Lgnu/lists/Pair;

    if-nez v2, :cond_11

    goto :goto_2

    .line 125
    :cond_11
    check-cast p0, Lgnu/lists/Pair;

    .line 126
    check-cast p1, Lgnu/lists/Pair;

    goto :goto_1

    .line 124
    :cond_12
    :goto_2
    invoke-static {p0, p1}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_13
    :goto_3
    return v1

    .line 129
    :cond_14
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_15
    :goto_4
    return v1
.end method

.method public static numberEquals(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 2

    .line 20
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->isExact(Ljava/lang/Number;)Z

    move-result v0

    .line 21
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->isExact(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 23
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 134
    iget-object v0, p0, Lgnu/kawa/functions/IsEqual;->language:Lgnu/expr/Language;

    invoke-static {p1, p2}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
