.class public Lcom/google/appinventor/components/runtime/errors/IterationError;
.super Lcom/google/appinventor/components/runtime/errors/DispatchableError;
.source "SourceFile"


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static fromError(ILcom/google/appinventor/components/runtime/errors/DispatchableError;)Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    .locals 2

    .line 29
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v0

    const/16 v1, 0xd4d

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd51

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd52

    if-eq v0, v1, :cond_0

    return-object p1

    .line 33
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IterationError;

    const/16 v1, 0xd4f

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/errors/IterationError;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/appinventor/components/runtime/errors/IterationError;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IterationError;

    const/16 v1, 0xd50

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/errors/IterationError;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/appinventor/components/runtime/errors/IterationError;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    .line 31
    :cond_2
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IterationError;

    const/16 v1, 0xd4e

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/errors/IterationError;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/appinventor/components/runtime/errors/IterationError;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 42
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 44
    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public getExpected()Ljava/lang/String;
    .locals 2

    .line 21
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/errors/IterationError;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFound()Ljava/lang/String;
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/errors/IterationError;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/errors/IterationError;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
