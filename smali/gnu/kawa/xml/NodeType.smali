.class public Lgnu/kawa/xml/NodeType;
.super Lgnu/bytecode/ObjectType;
.source "NodeType.java"

# interfaces
.implements Lgnu/expr/TypeValue;
.implements Lgnu/lists/NodePredicate;
.implements Ljava/io/Externalizable;


# static fields
.field public static final ATTRIBUTE_OK:I = 0x4

.field public static final COMMENT_OK:I = 0x10

.field public static final DOCUMENT_OK:I = 0x8

.field public static final ELEMENT_OK:I = 0x2

.field public static final PI_OK:I = 0x20

.field public static final TEXT_OK:I = 0x1

.field public static final anyNodeTest:Lgnu/kawa/xml/NodeType;

.field static final coerceMethod:Lgnu/bytecode/Method;

.field static final coerceOrNullMethod:Lgnu/bytecode/Method;

.field public static final commentNodeTest:Lgnu/kawa/xml/NodeType;

.field public static final documentNodeTest:Lgnu/kawa/xml/NodeType;

.field public static final nodeType:Lgnu/kawa/xml/NodeType;

.field public static final textNodeTest:Lgnu/kawa/xml/NodeType;

.field public static final typeKNode:Lgnu/bytecode/ClassType;

.field public static final typeNodeType:Lgnu/bytecode/ClassType;


# instance fields
.field kinds:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gnu.kawa.xml.KNode"

    .line 184
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/NodeType;->typeKNode:Lgnu/bytecode/ClassType;

    const-string v1, "gnu.kawa.xml.NodeType"

    .line 185
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/NodeType;->typeNodeType:Lgnu/bytecode/ClassType;

    .line 186
    new-instance v2, Lgnu/kawa/xml/NodeType;

    invoke-direct {v2, v0}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    sput-object v2, Lgnu/kawa/xml/NodeType;->nodeType:Lgnu/kawa/xml/NodeType;

    const-string v0, "coerceForce"

    const/4 v2, 0x2

    .line 187
    invoke-virtual {v1, v0, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeType;->coerceMethod:Lgnu/bytecode/Method;

    const-string v0, "coerceOrNull"

    .line 189
    invoke-virtual {v1, v0, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    .line 218
    new-instance v0, Lgnu/kawa/xml/NodeType;

    const-string v1, "document-node"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    .line 220
    new-instance v0, Lgnu/kawa/xml/NodeType;

    const-string v1, "text"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->textNodeTest:Lgnu/kawa/xml/NodeType;

    .line 222
    new-instance v0, Lgnu/kawa/xml/NodeType;

    const-string v1, "comment"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->commentNodeTest:Lgnu/kawa/xml/NodeType;

    .line 224
    new-instance v0, Lgnu/kawa/xml/NodeType;

    const-string v1, "node"

    invoke-direct {v0, v1}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 37
    invoke-direct {p0, p1, v0}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    .line 32
    iput p2, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    return-void
.end method

.method public static coerceForce(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;
    .locals 2

    .line 126
    invoke-static {p0, p1}, Lgnu/kawa/xml/NodeType;->coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coerce from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;
    .locals 3

    .line 135
    instance-of v0, p0, Lgnu/xml/NodeTree;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    check-cast p0, Lgnu/xml/NodeTree;

    invoke-static {p0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object p0

    goto :goto_0

    .line 137
    :cond_0
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_1

    .line 138
    check-cast p0, Lgnu/kawa/xml/KNode;

    .line 141
    :goto_0
    iget-object v0, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    iget v2, p0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-static {v0, v2, p1}, Lgnu/kawa/xml/NodeType;->isInstance(Lgnu/lists/AbstractSequence;II)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v1, p0

    :cond_1
    return-object v1
.end method

.method public static isInstance(Lgnu/lists/AbstractSequence;II)Z
    .locals 1

    .line 85
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-gez p2, :cond_1

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1

    :cond_1
    if-eqz p0, :cond_7

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    return v0

    :pswitch_0
    and-int/lit8 p0, p2, 0x20

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1

    :pswitch_1
    and-int/lit8 p0, p2, 0x10

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    :cond_3
    return p1

    :pswitch_2
    and-int/lit8 p0, p2, 0x4

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    :cond_4
    return p1

    :pswitch_3
    and-int/lit8 p0, p2, 0x8

    if-eqz p0, :cond_5

    const/4 p1, 0x1

    :cond_5
    return p1

    :pswitch_4
    and-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_6

    const/4 p1, 0x1

    :cond_6
    return p1

    :pswitch_5
    and-int/lit8 p0, p2, 0x1

    if-eqz p0, :cond_7

    const/4 p1, 0x1

    :cond_7
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 55
    iget v0, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-static {p1, v0}, Lgnu/kawa/xml/NodeType;->coerceForce(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object p1

    return-object p1
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 1

    .line 65
    invoke-virtual {p0}, Lgnu/kawa/xml/NodeType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result p1

    return p1
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4

    .line 48
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/kawa/xml/NodeType;->coerceMethod:Lgnu/bytecode/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 49
    invoke-virtual {v0, p0}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 1

    .line 42
    iget v0, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 43
    sget-object v0, Lgnu/kawa/xml/NodeType;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    return-void
.end method

.method protected emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V
    .locals 0

    .line 147
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 150
    :cond_0
    iget p1, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 151
    sget-object p1, Lgnu/kawa/xml/NodeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    invoke-virtual {p2, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    return-void
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1

    .line 169
    instance-of v0, p3, Lgnu/expr/ConditionalTarget;

    if-eqz v0, :cond_1

    .line 171
    check-cast p3, Lgnu/expr/ConditionalTarget;

    .line 172
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/xml/NodeType;->emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V

    .line 173
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    .line 174
    iget-boolean p2, p3, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz p2, :cond_0

    .line 175
    iget-object p2, p3, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    const/16 v0, 0xc6

    invoke-virtual {p1, p2, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p2, p3, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    const/16 v0, 0xc7

    invoke-virtual {p1, p2, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    .line 178
    :goto_0
    invoke-virtual {p3, p1}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    goto :goto_1

    .line 181
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    :goto_1
    return-void
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 1

    .line 156
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 157
    invoke-virtual {p0, p1, p3}, Lgnu/kawa/xml/NodeType;->emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V

    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 161
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 163
    :cond_0
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfNotNull()V

    return-void
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .line 60
    sget-object v0, Lgnu/kawa/xml/NodeType;->typeKNode:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1

    .line 70
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lgnu/kawa/xml/KNode;

    .line 73
    iget-object v0, p1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {p1}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lgnu/kawa/xml/NodeType;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isInstancePos(Lgnu/lists/AbstractSequence;I)Z
    .locals 1

    .line 80
    iget v0, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-static {p1, p2, v0}, Lgnu/kawa/xml/NodeType;->isInstance(Lgnu/lists/AbstractSequence;II)Z

    move-result p1

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

    .line 212
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 214
    invoke-virtual {p0, v0}, Lgnu/kawa/xml/NodeType;->setName(Ljava/lang/String;)V

    .line 215
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result p1

    iput p1, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NodeType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/kawa/xml/NodeType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 204
    invoke-virtual {p0}, Lgnu/kawa/xml/NodeType;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 205
    :cond_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 206
    iget v0, p0, Lgnu/kawa/xml/NodeType;->kinds:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    return-void
.end method
