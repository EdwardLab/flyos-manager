.class public Lgnu/xquery/util/QNameUtils;
.super Ljava/lang/Object;
.source "QNameUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static localNameFromQName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 158
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    .line 162
    check-cast p0, Lgnu/mapping/Symbol;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/kawa/xml/XStringType;->makeNCName(Ljava/lang/String;)Lgnu/kawa/xml/XString;

    move-result-object p0

    return-object p0

    .line 161
    :cond_1
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "local-name-from-QName"

    const-string v3, "xs:QName"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;
    .locals 1

    :goto_0
    if-nez p1, :cond_0

    .line 98
    invoke-virtual {p2, p0}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {p1}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 103
    invoke-virtual {p1}, Lgnu/xml/NamespaceBinding;->getUri()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_1

    if-nez p0, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1

    .line 94
    :cond_2
    invoke-virtual {p1}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object p1

    goto :goto_0
.end method

.method public static makeQName(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 5

    const-string v0, ""

    if-eqz p0, :cond_0

    .line 134
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v1, :cond_1

    :cond_0
    move-object p0, v0

    :cond_1
    const/16 v1, 0x3a

    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 137
    check-cast p0, Ljava/lang/String;

    if-gez v1, :cond_2

    move-object v2, v0

    move-object v0, p1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 146
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 148
    :goto_0
    invoke-static {v0}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "\'"

    if-eqz v3, :cond_6

    if-ltz v1, :cond_3

    invoke-static {v2}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    if-ltz v1, :cond_5

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 152
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "empty uri for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_5
    :goto_1
    invoke-static {p0, v0, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0

    .line 150
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid QName syntax \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static namespaceURIForPrefix(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 196
    invoke-static {p1}, Lgnu/kawa/xml/KNode;->coerce(Ljava/lang/Object;)Lgnu/kawa/xml/KNode;

    move-result-object v0

    const-string v1, "namespace-uri-for-prefix"

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    .line 200
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v3, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    instance-of v3, p0, Ljava/lang/String;

    if-nez v3, :cond_2

    instance-of v3, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    new-instance p0, Lgnu/mapping/WrongType;

    const/4 v0, 0x1

    const-string v2, "xs:string"

    invoke-direct {p0, v1, v0, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw p0

    .line 206
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p0

    .line 210
    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Lgnu/kawa/xml/KNode;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    .line 212
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :cond_5
    return-object p0

    .line 198
    :cond_6
    new-instance p0, Lgnu/mapping/WrongType;

    const/4 v0, 0x2

    const-string v2, "node()"

    invoke-direct {p0, v1, v0, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw p0
.end method

.method public static namespaceURIFromQName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 181
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    :try_start_0
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 189
    :catch_0
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "namespace-uri"

    const-string v3, "xs:QName"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static prefixFromQName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 167
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_3

    .line 171
    check-cast p0, Lgnu/mapping/Symbol;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {p0}, Lgnu/kawa/xml/XStringType;->makeNCName(Ljava/lang/String;)Lgnu/kawa/xml/XString;

    move-result-object p0

    return-object p0

    .line 173
    :cond_2
    :goto_0
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0

    .line 176
    :cond_3
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "prefix-from-QName"

    const-string v3, "xs:QName"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static resolvePrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;
    .locals 1

    .line 119
    invoke-static {p0, p1, p2}, Lgnu/xquery/util/QNameUtils;->lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown namespace prefix \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static resolveQName(Ljava/lang/Object;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/Object;
    .locals 3

    .line 57
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 58
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    return-object p0

    .line 60
    :cond_0
    instance-of v0, p0, Lgnu/mapping/Values;

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_6

    .line 63
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3a

    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    const/4 v0, 0x0

    move-object v2, v0

    move-object v0, p0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v1, v0

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    invoke-static {v0}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v2, :cond_3

    invoke-static {v2}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    :cond_3
    invoke-static {v2, p1, p2}, Lgnu/xquery/util/QNameUtils;->resolvePrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object p0

    if-nez v2, :cond_4

    const-string v2, ""

    .line 82
    :cond_4
    invoke-static {p0, v0, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0

    .line 79
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid QName syntax \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "bad argument to QName"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resolveQNameUsingElement(Ljava/lang/Object;Lgnu/kawa/xml/KElement;)Ljava/lang/Object;
    .locals 5

    .line 11
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 12
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_9

    if-nez p0, :cond_0

    goto/16 :goto_2

    .line 14
    :cond_0
    instance-of v0, p0, Lgnu/mapping/Values;

    if-nez v0, :cond_8

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_8

    .line 17
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3a

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v1, v0

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    .line 30
    :goto_0
    invoke-virtual {p1, v0}, Lgnu/kawa/xml/KElement;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    const-string v3, "\'"

    if-nez p1, :cond_4

    if-nez v0, :cond_3

    move-object p1, v2

    goto :goto_1

    .line 36
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown namespace for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_4
    :goto_1
    invoke-static {v1}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_5

    invoke-static {v0}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    if-nez v0, :cond_6

    move-object v0, v2

    .line 43
    :cond_6
    invoke-static {p1, v1, v0}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0

    .line 41
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid QName syntax \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "bad argument to QName"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_2
    return-object p0
.end method

.method public static resolveURI(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 220
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_0

    .line 221
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 222
    :cond_0
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_1

    .line 223
    invoke-static {p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 224
    :cond_1
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_7

    if-nez p0, :cond_2

    goto :goto_1

    .line 226
    :cond_2
    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 228
    :cond_3
    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_4

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    :cond_4
    instance-of v0, p1, Lgnu/text/Path;

    if-eqz v0, :cond_5

    check-cast p1, Lgnu/text/Path;

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object p1

    .line 231
    :goto_0
    instance-of v0, p0, Lgnu/text/Path;

    if-eqz v0, :cond_6

    .line 232
    check-cast p0, Lgnu/text/Path;

    invoke-virtual {p1, p0}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object p0

    return-object p0

    .line 234
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object p0

    :cond_7
    :goto_1
    return-object p0
.end method

.method public static validNCName(Ljava/lang/String;)Z
    .locals 0

    .line 127
    invoke-static {p0}, Lgnu/xml/XName;->isName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
