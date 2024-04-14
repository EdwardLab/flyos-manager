.class public Lgnu/mapping/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"

# interfaces
.implements Lgnu/mapping/EnvironmentKey;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final FUNCTION:Lgnu/mapping/Symbol;

.field public static final PLIST:Lgnu/mapping/Symbol;


# instance fields
.field protected name:Ljava/lang/String;

.field namespace:Lgnu/mapping/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(function)"

    .line 350
    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Symbol;->FUNCTION:Lgnu/mapping/Symbol;

    const-string v0, "(property-list)"

    .line 362
    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p2, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    .line 292
    iput-object p1, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    return-void
.end method

.method public static equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 312
    :cond_1
    iget-object v2, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    iget-object v3, p1, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    if-ne v2, v3, :cond_3

    .line 315
    iget-object p0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 316
    iget-object p1, p1, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 320
    iget-object p0, p0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    iget-object p1, p1, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 1

    .line 116
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast p0, Lgnu/mapping/Namespace;

    :goto_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0

    .line 120
    :cond_2
    :goto_1
    invoke-static {p1}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 0

    .line 105
    invoke-static {p0, p2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2

    .line 277
    new-instance v0, Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 0

    .line 249
    invoke-static {p1}, Lgnu/mapping/Namespace;->makeUnknownNamespace(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 10

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    .line 191
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_0

    if-nez v4, :cond_0

    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    :cond_0
    const/16 v9, 0x7b

    if-ne v7, v9, :cond_2

    if-gez v5, :cond_1

    move v5, v3

    move v6, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :cond_2
    const/16 v9, 0x7d

    if-ne v7, v9, :cond_5

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    if-ge v3, v0, :cond_3

    add-int/lit8 v0, v3, 0x1

    .line 213
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_3

    add-int/lit8 v0, v3, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v3, 0x1

    :goto_1
    move v1, v3

    move v3, v6

    goto :goto_2

    :cond_4
    if-gez v4, :cond_5

    move v0, v6

    move v3, v0

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    move v3, v6

    const/4 v0, 0x0

    :goto_2
    if-ltz v5, :cond_8

    if-lez v1, :cond_8

    add-int/lit8 v5, v5, 0x1

    .line 225
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-lez v3, :cond_7

    .line 226
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    .line 227
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0

    :cond_8
    if-lez v3, :cond_9

    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0

    .line 236
    :cond_9
    invoke-static {p0}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
    .locals 1

    .line 126
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    check-cast p0, Lgnu/mapping/SimpleSymbol;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 1

    if-eqz p1, :cond_3

    .line 131
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    instance-of v0, p1, Lgnu/mapping/Namespace;

    if-eqz v0, :cond_1

    .line 135
    check-cast p1, Lgnu/mapping/Namespace;

    goto :goto_0

    .line 136
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_2

    .line 137
    sget-object p1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    goto :goto_0

    .line 141
    :cond_2
    check-cast p1, Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object p1

    .line 147
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0

    .line 132
    :cond_3
    :goto_1
    invoke-static {p0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 0

    .line 163
    invoke-static {p1, p2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 297
    check-cast p1, Lgnu/mapping/Symbol;

    .line 298
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 299
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "comparing Symbols in different namespaces"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 330
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/mapping/Symbol;

    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getKeyProperty()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getKeySymbol()Lgnu/mapping/Symbol;
    .locals 0

    return-object p0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalPart()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespace()Lgnu/mapping/Namespace;
    .locals 1

    .line 341
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, v0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final hasEmptyNamespace()Z
    .locals 1

    .line 72
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 335
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public matches(Lgnu/mapping/EnvironmentKey;)Z
    .locals 1

    .line 44
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-static {v0, p0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .locals 0

    .line 48
    invoke-static {p1, p0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 414
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 415
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    if-nez v0, :cond_0

    return-object p0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public final setNamespace(Lgnu/mapping/Namespace;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x50

    .line 366
    invoke-virtual {p0, v0}, Lgnu/mapping/Symbol;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(C)Ljava/lang/String;
    .locals 6

    .line 377
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 381
    :goto_1
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    return-object v3

    .line 384
    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_5

    const/16 v5, 0x55

    if-ne p1, v5, :cond_4

    if-nez v0, :cond_5

    .line 386
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v0, :cond_7

    const/16 v0, 0x50

    if-ne p1, v0, :cond_6

    if-nez v2, :cond_7

    :cond_6
    const/16 p1, 0x7b

    .line 389
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7d

    .line 391
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    const/16 p1, 0x3a

    .line 393
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 404
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 405
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
