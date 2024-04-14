.class public Lgnu/mapping/Table2D;
.super Ljava/lang/Object;
.source "Table2D.java"


# static fields
.field private static instance:Lgnu/mapping/Table2D;


# instance fields
.field log2Size:I

.field mask:I

.field num_bindings:I

.field table:[Lgnu/mapping/Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lgnu/mapping/Table2D;

    invoke-direct {v0}, Lgnu/mapping/Table2D;-><init>()V

    sput-object v0, Lgnu/mapping/Table2D;->instance:Lgnu/mapping/Table2D;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    .line 23
    invoke-direct {p0, v0}, Lgnu/mapping/Table2D;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 28
    iput v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    .line 29
    :goto_0
    iget v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    if-le p1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 30
    iput v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    goto :goto_0

    :cond_0
    shl-int p1, v1, v0

    .line 32
    new-array v0, p1, [Lgnu/mapping/Entry;

    iput-object v0, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    sub-int/2addr p1, v1

    .line 33
    iput p1, p0, Lgnu/mapping/Table2D;->mask:I

    return-void
.end method

.method public static final getInstance()Lgnu/mapping/Table2D;
    .locals 1

    .line 14
    sget-object v0, Lgnu/mapping/Table2D;->instance:Lgnu/mapping/Table2D;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 38
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 39
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 40
    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Table2D;->lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 41
    iget-object p2, p1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p3
.end method

.method public isBound(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 46
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 47
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 48
    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Table2D;->lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p2, p1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;
    .locals 8

    xor-int/2addr p3, p4

    .line 223
    iget p4, p0, Lgnu/mapping/Table2D;->mask:I

    and-int/2addr p3, p4

    .line 225
    iget-object p4, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aget-object p4, p4, p3

    const/4 v0, 0x0

    move-object v1, p4

    move-object v2, v0

    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_5

    .line 228
    iget-object v4, v1, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    .line 229
    iget-object v5, v1, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    .line 232
    instance-of v6, v4, Ljava/lang/ref/WeakReference;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 234
    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v7, 0x1

    .line 237
    :cond_0
    instance-of v6, v5, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_1

    .line 239
    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x1

    .line 244
    :cond_1
    iget-object v6, v1, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    if-eqz v7, :cond_3

    if-nez v2, :cond_2

    .line 248
    iget-object v4, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aput-object v6, v4, p3

    goto :goto_1

    .line 250
    :cond_2
    iput-object v6, v2, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 251
    :goto_1
    iget v4, p0, Lgnu/mapping/Table2D;->num_bindings:I

    sub-int/2addr v4, v3

    iput v4, p0, Lgnu/mapping/Table2D;->num_bindings:I

    .line 252
    iput-object v1, v1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    if-ne v4, p1, :cond_4

    if-ne v5, p2, :cond_4

    return-object v1

    :cond_4
    move-object v2, v1

    :goto_2
    move-object v1, v6

    goto :goto_0

    :cond_5
    if-eqz p5, :cond_6

    .line 262
    new-instance p5, Lgnu/mapping/Entry;

    invoke-direct {p5}, Lgnu/mapping/Entry;-><init>()V

    .line 295
    invoke-virtual {p0, p1}, Lgnu/mapping/Table2D;->wrapReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 296
    invoke-virtual {p0, p2}, Lgnu/mapping/Table2D;->wrapReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 297
    iput-object p1, p5, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    .line 298
    iput-object p2, p5, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    .line 299
    iget p1, p0, Lgnu/mapping/Table2D;->num_bindings:I

    add-int/2addr p1, v3

    iput p1, p0, Lgnu/mapping/Table2D;->num_bindings:I

    .line 301
    iput-object p4, p5, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 302
    iget-object p1, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aput-object p5, p1, p3

    .line 303
    iput-object p5, p5, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    return-object p5

    :cond_6
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 54
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 55
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 56
    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Table2D;->lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lgnu/mapping/Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 58
    iput-object p3, p1, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    return-object p2
.end method

.method rehash()V
    .locals 11

    .line 172
    iget-object v0, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    .line 173
    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    .line 175
    new-array v3, v2, [Lgnu/mapping/Entry;

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    const/4 v5, 0x0

    .line 177
    iput v5, p0, Lgnu/mapping/Table2D;->num_bindings:I

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    .line 180
    aget-object v6, v0, v1

    :goto_0
    if-eqz v6, :cond_0

    .line 184
    iget-object v7, v6, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    .line 185
    iget-object v8, v6, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    .line 188
    instance-of v9, v7, Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_1

    .line 190
    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 193
    :goto_1
    instance-of v10, v8, Ljava/lang/ref/WeakReference;

    if-eqz v10, :cond_3

    .line 195
    check-cast v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 199
    :cond_3
    :goto_2
    iget-object v10, v6, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    if-eqz v9, :cond_4

    .line 201
    iput-object v6, v6, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    goto :goto_3

    .line 204
    :cond_4
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    xor-int/2addr v7, v8

    and-int/2addr v7, v2

    .line 207
    aget-object v8, v3, v7

    iput-object v8, v6, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 208
    aput-object v6, v3, v7

    .line 209
    iget v6, p0, Lgnu/mapping/Table2D;->num_bindings:I

    add-int/2addr v6, v4

    iput v6, p0, Lgnu/mapping/Table2D;->num_bindings:I

    :goto_3
    move-object v6, v10

    goto :goto_0

    .line 214
    :cond_5
    iput-object v3, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    .line 215
    iget v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    add-int/2addr v0, v4

    iput v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    .line 216
    iput v2, p0, Lgnu/mapping/Table2D;->mask:I

    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 64
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 65
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 67
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/Table2D;->remove(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/Table2D;->remove(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 9

    xor-int/2addr p3, p4

    .line 78
    iget p4, p0, Lgnu/mapping/Table2D;->mask:I

    and-int/2addr p3, p4

    .line 80
    iget-object p4, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aget-object p4, p4, p3

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p4, :cond_8

    .line 83
    iget-object v2, p4, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    .line 84
    iget-object v3, p4, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    .line 87
    instance-of v4, v2, Ljava/lang/ref/WeakReference;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 89
    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 92
    :goto_1
    instance-of v7, v3, Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_2

    .line 94
    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 98
    :cond_2
    :goto_2
    iget-object v7, p4, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 99
    iget-object v8, p4, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    if-ne v2, p1, :cond_3

    if-ne v3, p2, :cond_3

    const/4 v6, 0x1

    :cond_3
    if-nez v4, :cond_6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    return-object v8

    :cond_5
    move-object v1, p4

    goto :goto_5

    :cond_6
    :goto_3
    if-nez v1, :cond_7

    .line 104
    iget-object v2, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aput-object v7, v2, p3

    goto :goto_4

    .line 106
    :cond_7
    iput-object v7, v1, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 107
    :goto_4
    iget v2, p0, Lgnu/mapping/Table2D;->num_bindings:I

    sub-int/2addr v2, v5

    iput v2, p0, Lgnu/mapping/Table2D;->num_bindings:I

    .line 108
    iput-object p4, p4, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    :goto_5
    move-object p4, v7

    goto :goto_0

    :cond_8
    return-object v0
.end method

.method protected wrapReference(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    .line 313
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :cond_1
    :goto_0
    return-object p1
.end method
