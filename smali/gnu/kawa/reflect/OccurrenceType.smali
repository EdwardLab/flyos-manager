.class public Lgnu/kawa/reflect/OccurrenceType;
.super Lgnu/bytecode/ObjectType;
.source "OccurrenceType.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/expr/TypeValue;


# static fields
.field public static final emptySequenceType:Lgnu/bytecode/Type;

.field static final isInstanceMethod:Lgnu/bytecode/Method;

.field public static final typeOccurrenceType:Lgnu/bytecode/ClassType;


# instance fields
.field base:Lgnu/bytecode/Type;

.field maxOccurs:I

.field minOccurs:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lgnu/kawa/reflect/OccurrenceType;->getInstance(Lgnu/bytecode/Type;II)Lgnu/bytecode/Type;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->emptySequenceType:Lgnu/bytecode/Type;

    const-string v0, "gnu.kawa.reflect.OccurrenceType"

    .line 305
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->typeOccurrenceType:Lgnu/bytecode/ClassType;

    const-string v1, "isInstance"

    const/4 v2, 0x1

    .line 307
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->isInstanceMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;II)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 27
    iput-object p1, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    .line 28
    iput p2, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    .line 29
    iput p3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;II)Lgnu/bytecode/Type;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_2

    if-gez p2, :cond_2

    .line 36
    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_2

    .line 38
    :cond_1
    sget-object p0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object p0

    .line 39
    :cond_2
    new-instance v0, Lgnu/kawa/reflect/OccurrenceType;

    invoke-direct {v0, p0, p1, p2}, Lgnu/kawa/reflect/OccurrenceType;-><init>(Lgnu/bytecode/Type;II)V

    return-object v0
.end method

.method public static itemCountCode(Lgnu/bytecode/Type;)C
    .locals 2

    .line 229
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result p0

    and-int/lit16 v0, p0, 0xfff

    shr-int/lit8 p0, p0, 0xc

    if-nez p0, :cond_0

    const/16 p0, 0x30

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_2

    if-ne p0, v1, :cond_1

    const/16 p0, 0x3f

    goto :goto_0

    :cond_1
    const/16 p0, 0x2a

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    if-ne p0, v1, :cond_3

    const/16 p0, 0x31

    goto :goto_0

    :cond_3
    const/16 p0, 0x2b

    :goto_0
    return p0
.end method

.method public static itemCountIsOne(Lgnu/bytecode/Type;)Z
    .locals 1

    .line 245
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result p0

    const/16 v0, 0x1001

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static itemCountIsZeroOrOne(Lgnu/bytecode/Type;)Z
    .locals 0

    .line 240
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result p0

    shr-int/lit8 p0, p0, 0xd

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static itemCountRange(Lgnu/bytecode/Type;)I
    .locals 7

    .line 174
    instance-of v0, p0, Lgnu/kawa/reflect/SingletonType;

    const/16 v1, 0x1001

    if-eqz v0, :cond_0

    return v1

    .line 176
    :cond_0
    instance-of v0, p0, Lgnu/kawa/reflect/OccurrenceType;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 178
    check-cast p0, Lgnu/kawa/reflect/OccurrenceType;

    .line 179
    invoke-virtual {p0}, Lgnu/kawa/reflect/OccurrenceType;->minOccurs()I

    move-result v0

    .line 180
    invoke-virtual {p0}, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs()I

    move-result v3

    .line 181
    invoke-virtual {p0}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object p0

    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result p0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    if-eq v3, v4, :cond_2

    :cond_1
    if-nez p0, :cond_3

    :cond_2
    return p0

    :cond_3
    const v4, 0xfffff

    const/4 v5, -0x1

    if-le v3, v4, :cond_4

    const/4 v3, -0x1

    :cond_4
    if-nez v3, :cond_5

    return v2

    :cond_5
    and-int/lit16 v2, p0, 0xfff

    shr-int/lit8 v6, p0, 0xc

    if-eq p0, v1, :cond_a

    const/16 p0, 0xfff

    if-le v0, p0, :cond_6

    const/16 v0, 0xfff

    :cond_6
    mul-int v0, v0, v2

    if-le v0, p0, :cond_7

    const/16 v0, 0xfff

    :cond_7
    if-ltz v3, :cond_9

    if-gez v6, :cond_8

    goto :goto_0

    :cond_8
    mul-int v3, v3, v6

    goto :goto_1

    :cond_9
    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-le v3, v4, :cond_a

    goto :goto_2

    :cond_a
    move v5, v3

    :goto_2
    shl-int/lit8 p0, v5, 0xc

    or-int/2addr p0, v0

    return p0

    .line 207
    :cond_b
    instance-of v0, p0, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_d

    .line 208
    invoke-virtual {p0}, Lgnu/bytecode/Type;->isVoid()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 v1, 0x0

    :cond_c
    return v1

    .line 209
    :cond_d
    instance-of v0, p0, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_e

    return v1

    .line 211
    :cond_e
    instance-of v0, p0, Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_f

    .line 213
    sget-object v0, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result p0

    const/4 v0, -0x3

    if-ne p0, v0, :cond_f

    return v1

    :cond_f
    const/16 p0, -0x1000

    return p0
.end method

.method public static itemPrimeType(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 1

    .line 252
    :goto_0
    instance-of v0, p0, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v0, :cond_0

    .line 253
    check-cast p0, Lgnu/kawa/reflect/OccurrenceType;

    invoke-virtual {p0}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object p0

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    :goto_1
    return-object p0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 69
    instance-of v0, p1, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 79
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/kawa/reflect/OccurrenceType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 2

    .line 52
    instance-of v0, p1, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lgnu/kawa/reflect/OccurrenceType;

    .line 55
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    iget v1, p1, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    iget v1, p1, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {p1}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0

    .line 155
    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 1

    .line 138
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 143
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 144
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 146
    :cond_1
    invoke-virtual {p3, p0}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 148
    sget-object p1, Lgnu/kawa/reflect/OccurrenceType;->isInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 149
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    return-void
.end method

.method public getBase()Lgnu/bytecode/Type;
    .locals 1

    .line 21
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .line 47
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 6

    .line 86
    instance-of v0, p1, Lgnu/mapping/Values;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 88
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Values;

    .line 89
    invoke-virtual {v0}, Lgnu/mapping/Values;->startPos()I

    move-result p1

    .line 91
    iget-object v3, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    instance-of v4, v3, Lgnu/lists/ItemPredicate;

    if-eqz v4, :cond_4

    .line 93
    check-cast v3, Lgnu/lists/ItemPredicate;

    const/4 v4, 0x0

    .line 97
    :goto_0
    invoke-interface {v3, v0, p1}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v5

    .line 98
    invoke-virtual {v0, p1}, Lgnu/mapping/Values;->nextPos(I)I

    move-result p1

    if-nez p1, :cond_2

    .line 101
    iget p1, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-lt v4, p1, :cond_0

    iget p1, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz p1, :cond_1

    if-gt v4, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_1
    return v1

    :cond_2
    if-nez v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 114
    :goto_2
    invoke-virtual {v0, p1}, Lgnu/mapping/Values;->nextPos(I)I

    move-result p1

    if-nez p1, :cond_7

    .line 117
    iget p1, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-lt v3, p1, :cond_5

    iget p1, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz p1, :cond_6

    if-gt v3, p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    return v1

    .line 120
    :cond_7
    invoke-virtual {v0, p1}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v4

    .line 121
    iget-object v5, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v5, v4}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    return v2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 129
    :cond_9
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-gt v0, v1, :cond_b

    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-nez v0, :cond_a

    goto :goto_4

    .line 131
    :cond_a
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_4
    return v2
.end method

.method public maxOccurs()I
    .locals 1

    .line 23
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    return v0
.end method

.method public minOccurs()I
    .locals 1

    .line 22
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 300
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    .line 301
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    .line 302
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result p1

    iput p1, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 267
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v0}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v2, 0x20

    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 269
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v2, :cond_2

    const/16 v4, 0x28

    .line 271
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_3

    const/16 v0, 0x29

    .line 274
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 275
    :cond_3
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-ne v0, v1, :cond_4

    iget v2, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v2, v1, :cond_4

    goto :goto_3

    :cond_4
    if-nez v0, :cond_5

    .line 277
    iget v2, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v2, v1, :cond_5

    const/16 v0, 0x3f

    .line 278
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    const/4 v2, -0x1

    if-ne v0, v1, :cond_6

    .line 279
    iget v1, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v1, v2, :cond_6

    const/16 v0, 0x2b

    .line 280
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    const/16 v1, 0x2a

    if-nez v0, :cond_7

    .line 281
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v0, v2, :cond_7

    .line 282
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    const/16 v0, 0x7b

    .line 285
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v0, 0x2c

    .line 287
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz v0, :cond_8

    .line 289
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 291
    :cond_8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    const/16 v0, 0x7d

    .line 292
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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

    .line 260
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 261
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 262
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    return-void
.end method
