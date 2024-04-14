.class public Lcom/google/appinventor/components/runtime/util/YailList;
.super Lgnu/lists/Pair;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/YailObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    sget-object v0, Lcom/google/appinventor/components/runtime/util/YailConstants;->YAIL_HEADER:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {p0, v0, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 46
    sget-object v0, Lcom/google/appinventor/components/runtime/util/YailConstants;->YAIL_HEADER:Lgnu/mapping/SimpleSymbol;

    invoke-direct {p0, v0, p1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 132
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 133
    check-cast p0, Lgnu/math/IntNum;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 135
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_1
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    .line 53
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object v0
.end method

.method public static makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-static {v0}, Lgnu/lists/Pair;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object p0

    .line 79
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    .line 68
    invoke-static {p0}, Lgnu/lists/Pair;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object p0

    .line 69
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static makeList(Ljava/util/Set;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    invoke-static {v0}, Lgnu/lists/Pair;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object p0

    .line 90
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, v0}, Lgnu/lists/Pair;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object p0

    .line 61
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getObject(I)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 201
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 194
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 173
    invoke-super {p0}, Lgnu/lists/Pair;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/LList;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast v0, Lgnu/lists/LList;

    invoke-virtual {v0}, Lgnu/lists/LList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 103
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "YailList cannot be represented as an array"

    const-string v2, "YailList Error."

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 5

    .line 150
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    const/16 v2, 0x5b

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v2, :cond_0

    .line 155
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 164
    :catch_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "List failed to convert to JSON."

    const-string v2, "JSON Creation Error."

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/LList;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast v0, Lgnu/lists/LList;

    invoke-virtual {v0}, Lgnu/lists/LList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "YailList cannot be represented as a String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toStringArray()[Ljava/lang/String;
    .locals 5

    .line 115
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    .line 116
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v0, :cond_0

    add-int/lit8 v3, v2, -0x1

    .line 118
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
