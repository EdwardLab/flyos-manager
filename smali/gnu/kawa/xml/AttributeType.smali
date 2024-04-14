.class public Lgnu/kawa/xml/AttributeType;
.super Lgnu/kawa/xml/NodeType;
.source "AttributeType.java"

# interfaces
.implements Lgnu/expr/TypeValue;
.implements Ljava/io/Externalizable;
.implements Lgnu/lists/AttributePredicate;


# static fields
.field static final coerceMethod:Lgnu/bytecode/Method;

.field static final coerceOrNullMethod:Lgnu/bytecode/Method;

.field public static final typeAttributeType:Lgnu/bytecode/ClassType;


# instance fields
.field qname:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gnu.kawa.xml.AttributeType"

    .line 174
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/AttributeType;->typeAttributeType:Lgnu/bytecode/ClassType;

    const-string v1, "coerce"

    const/4 v2, 0x3

    .line 176
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/AttributeType;->coerceMethod:Lgnu/bytecode/Method;

    const-string v1, "coerceOrNull"

    .line 178
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/AttributeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, p1}, Lgnu/kawa/xml/AttributeType;-><init>(Ljava/lang/String;Lgnu/mapping/Symbol;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/mapping/Symbol;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ATTRIBUTE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (*)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    return-void
.end method

.method public static coerce(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/lists/SeqPosition;
    .locals 0

    .line 158
    invoke-static {p0, p1, p2}, Lgnu/kawa/xml/AttributeType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 160
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;
    .locals 3

    const/4 v0, 0x4

    .line 121
    invoke-static {p0, v0}, Lgnu/kawa/xml/NodeType;->coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object p2, v0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->getNextTypeObject()Ljava/lang/Object;

    move-result-object v1

    .line 129
    instance-of v2, v1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_2

    .line 131
    check-cast v1, Lgnu/mapping/Symbol;

    .line 132
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 136
    :cond_2
    instance-of v2, v1, Ljavax/xml/namespace/QName;

    if-eqz v2, :cond_3

    .line 138
    check-cast v1, Ljavax/xml/namespace/QName;

    .line 140
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    :goto_0
    if-eq p2, v1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    if-eq p1, v2, :cond_6

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    return-object v0

    .line 151
    :cond_6
    :goto_1
    check-cast p0, Lgnu/kawa/xml/KAttr;

    return-object p0
.end method

.method public static make(Lgnu/mapping/Symbol;)Lgnu/kawa/xml/AttributeType;
    .locals 1

    .line 35
    new-instance v0, Lgnu/kawa/xml/AttributeType;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/AttributeType;-><init>(Lgnu/mapping/Symbol;)V

    return-object v0
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/AttributeType;
    .locals 1

    if-eqz p0, :cond_0

    .line 25
    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    if-ne p1, p0, :cond_1

    .line 27
    sget-object p0, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    goto :goto_0

    .line 29
    :cond_1
    new-instance p0, Lgnu/mapping/Symbol;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    .line 30
    :goto_0
    new-instance p1, Lgnu/kawa/xml/AttributeType;

    invoke-direct {p1, p0}, Lgnu/kawa/xml/AttributeType;-><init>(Lgnu/mapping/Symbol;)V

    return-object p1
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 67
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lgnu/kawa/xml/AttributeType;->coerce(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/lists/SeqPosition;

    move-result-object p1

    return-object p1
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 62
    sget-object v0, Lgnu/kawa/xml/AttributeType;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    return-void
.end method

.method protected emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V
    .locals 0

    .line 166
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 169
    :cond_0
    iget-object p1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 171
    sget-object p1, Lgnu/kawa/xml/AttributeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    const-string v0, "gnu.kawa.xml.KAttr"

    .line 52
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Lgnu/lists/AbstractSequence;ILjava/lang/Object;)Z
    .locals 2

    .line 82
    iget-object p1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object p2, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {p2}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object p2

    .line 86
    instance-of v0, p3, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    .line 88
    check-cast p3, Lgnu/mapping/Symbol;

    .line 89
    invoke-virtual {p3}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p3}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 93
    :cond_0
    instance-of v0, p3, Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_1

    .line 95
    check-cast p3, Ljavax/xml/namespace/QName;

    .line 97
    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    :goto_0
    if-eqz p2, :cond_2

    .line 106
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 p2, 0x0

    :cond_2
    if-eq p2, p3, :cond_3

    if-nez p2, :cond_4

    :cond_3
    if-eq p1, v0, :cond_5

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 2

    .line 114
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lgnu/kawa/xml/AttributeType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInstancePos(Lgnu/lists/AbstractSequence;I)Z
    .locals 2

    .line 72
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lgnu/kawa/xml/AttributeType;->isInstance(Lgnu/lists/AbstractSequence;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 76
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/xml/AttributeType;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 191
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lgnu/kawa/xml/AttributeType;->setName(Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/mapping/Symbol;

    iput-object p1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lgnu/kawa/xml/AttributeType;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 184
    :cond_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
