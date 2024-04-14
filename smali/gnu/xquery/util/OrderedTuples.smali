.class public Lgnu/xquery/util/OrderedTuples;
.super Lgnu/lists/FilterConsumer;
.source "OrderedTuples.java"


# instance fields
.field body:Lgnu/mapping/Procedure;

.field comps:[Ljava/lang/Object;

.field first:I

.field n:I

.field next:[I

.field tuples:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    iput-object v0, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    return-void
.end method

.method public static make$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Lgnu/xquery/util/OrderedTuples;
    .locals 1

    .line 71
    new-instance v0, Lgnu/xquery/util/OrderedTuples;

    invoke-direct {v0}, Lgnu/xquery/util/OrderedTuples;-><init>()V

    .line 72
    iput-object p1, v0, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    .line 73
    iput-object p0, v0, Lgnu/xquery/util/OrderedTuples;->body:Lgnu/mapping/Procedure;

    return-object v0
.end method


# virtual methods
.method cmp(II)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 137
    :goto_0
    iget-object v3, v0, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v2, v4, :cond_11

    .line 139
    aget-object v4, v3, v2

    check-cast v4, Lgnu/mapping/Procedure;

    add-int/lit8 v5, v2, 0x1

    .line 140
    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    .line 141
    aget-object v3, v3, v6

    check-cast v3, Lgnu/xquery/util/NamedCollator;

    if-nez v3, :cond_0

    .line 143
    sget-object v3, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    .line 144
    :cond_0
    iget-object v6, v0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    aget-object v6, v6, p1

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v4, v6}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 145
    iget-object v7, v0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    aget-object v7, v7, p2

    check-cast v7, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v4, v7}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 146
    invoke-static {v6}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 147
    invoke-static {v4}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 148
    instance-of v7, v6, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v7, :cond_1

    .line 149
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 150
    :cond_1
    instance-of v7, v4, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v7, :cond_2

    .line 151
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    :cond_2
    invoke-static {v6}, Lgnu/xquery/util/SequenceUtils;->isEmptySequence(Ljava/lang/Object;)Z

    move-result v7

    .line 153
    invoke-static {v4}, Lgnu/xquery/util/SequenceUtils;->isEmptySequence(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    goto/16 :goto_9

    :cond_3
    const/4 v9, -0x1

    const/16 v10, 0x4c

    const/4 v11, 0x1

    if-nez v7, :cond_c

    if-eqz v8, :cond_4

    goto :goto_5

    .line 164
    :cond_4
    instance-of v7, v6, Ljava/lang/Number;

    if-eqz v7, :cond_5

    move-object v8, v6

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    .line 166
    :goto_1
    instance-of v12, v4, Ljava/lang/Number;

    if-eqz v12, :cond_6

    move-object v13, v4

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    goto :goto_2

    :cond_6
    const/4 v13, 0x0

    :goto_2
    if-eqz v8, :cond_7

    if-eqz v13, :cond_7

    goto :goto_9

    :cond_7
    if-nez v8, :cond_a

    if-eqz v13, :cond_8

    goto :goto_3

    :cond_8
    if-eqz v7, :cond_9

    if-eqz v12, :cond_9

    .line 176
    invoke-static {v6, v4, v1}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v3

    goto :goto_8

    .line 178
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_8

    .line 172
    :cond_a
    :goto_3
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_b

    const/4 v3, 0x1

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    :goto_4
    if-ne v8, v3, :cond_e

    goto :goto_7

    .line 159
    :cond_c
    :goto_5
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_d

    const/4 v3, 0x1

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    :goto_6
    if-ne v7, v3, :cond_e

    goto :goto_7

    :cond_e
    const/4 v9, 0x1

    :goto_7
    move v3, v9

    :goto_8
    if-nez v3, :cond_f

    :goto_9
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 182
    :cond_f
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-ne v1, v2, :cond_10

    goto :goto_a

    :cond_10
    neg-int v3, v3

    :goto_a
    return v3

    :cond_11
    return v1
.end method

.method emit(ILgnu/mapping/CallContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lgnu/xquery/util/OrderedTuples;->body:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 93
    invoke-virtual {p2}, Lgnu/mapping/CallContext;->runUntilDone()V

    return-void
.end method

.method emit(Lgnu/mapping/CallContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 85
    iget v0, p0, Lgnu/xquery/util/OrderedTuples;->first:I

    :goto_0
    if-ltz v0, :cond_0

    .line 86
    invoke-virtual {p0, v0, p1}, Lgnu/xquery/util/OrderedTuples;->emit(ILgnu/mapping/CallContext;)V

    .line 85
    iget-object v1, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method listsort(I)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 208
    iget v0, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 211
    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 215
    :goto_0
    iget v3, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    if-ne v2, v3, :cond_c

    .line 217
    iget-object v3, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    sub-int/2addr v2, v0

    aput v1, v3, v2

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_2
    if-ltz p1, :cond_a

    add-int/lit8 v7, v6, 0x1

    move v9, p1

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v6, v2, :cond_2

    add-int/lit8 v8, v8, 0x1

    .line 240
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v9, v10, v9

    if-gez v9, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    :goto_4
    move v6, v5

    move v5, v4

    move v4, p1

    move p1, v9

    move v9, v2

    :goto_5
    if-gtz v8, :cond_4

    if-lez v9, :cond_3

    if-ltz p1, :cond_3

    goto :goto_6

    :cond_3
    move v4, v5

    move v5, v6

    move v6, v7

    goto :goto_2

    :cond_4
    :goto_6
    if-nez v8, :cond_5

    .line 252
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v10, v10, p1

    :goto_7
    add-int/lit8 v9, v9, -0x1

    move v12, v8

    move v8, p1

    move p1, v10

    :goto_8
    move v10, v9

    move v9, v12

    goto :goto_b

    :cond_5
    if-eqz v9, :cond_8

    if-gez p1, :cond_6

    goto :goto_9

    .line 256
    :cond_6
    invoke-virtual {p0, v4, p1}, Lgnu/xquery/util/OrderedTuples;->cmp(II)I

    move-result v10

    if-gtz v10, :cond_7

    .line 259
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v10, v10, v4

    goto :goto_a

    .line 262
    :cond_7
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v10, v10, p1

    goto :goto_7

    .line 255
    :cond_8
    :goto_9
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v10, v10, v4

    :goto_a
    add-int/lit8 v8, v8, -0x1

    move v12, v8

    move v8, v4

    move v4, v10

    goto :goto_8

    :goto_b
    if-ltz v6, :cond_9

    .line 267
    iget-object v11, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aput v8, v11, v6

    goto :goto_c

    :cond_9
    move v5, v8

    :goto_c
    move v6, v8

    move v8, v9

    move v9, v10

    goto :goto_5

    .line 276
    :cond_a
    iget-object p1, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aput v1, p1, v5

    if-gt v6, v0, :cond_b

    return v4

    :cond_b
    mul-int/lit8 v2, v2, 0x2

    move p1, v4

    goto :goto_1

    .line 221
    :cond_c
    iget-object v3, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    add-int/lit8 v4, v2, -0x1

    aput v2, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public run$X(Lgnu/mapping/CallContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lgnu/xquery/util/OrderedTuples;->listsort(I)I

    move-result v0

    iput v0, p0, Lgnu/xquery/util/OrderedTuples;->first:I

    .line 80
    invoke-virtual {p0, p1}, Lgnu/xquery/util/OrderedTuples;->emit(Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 4

    .line 54
    iget v0, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    iget-object v1, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 57
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iput-object v2, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    .line 60
    :cond_0
    iget-object v0, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    aput-object p1, v0, v1

    return-void
.end method
