.class public Lgnu/bytecode/PrimType;
.super Lgnu/bytecode/Type;
.source "PrimType.java"


# static fields
.field private static final numberHierarchy:Ljava/lang/String; = "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;"


# direct methods
.method protected constructor <init>(Lgnu/bytecode/PrimType;)V
    .locals 2

    .line 14
    iget-object v0, p1, Lgnu/bytecode/PrimType;->this_name:Ljava/lang/String;

    iget-object v1, p1, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lgnu/bytecode/Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget v0, p1, Lgnu/bytecode/PrimType;->size:I

    iput v0, p0, Lgnu/bytecode/PrimType;->size:I

    .line 16
    iget-object p1, p1, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    iput-object p1, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput p3, p0, Lgnu/bytecode/PrimType;->size:I

    .line 8
    iput-object p4, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    .line 9
    invoke-static {p4, p0}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public static booleanValue(Ljava/lang/Object;)Z
    .locals 1

    .line 64
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static compare(Lgnu/bytecode/PrimType;Lgnu/bytecode/PrimType;)I
    .locals 7

    .line 160
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 161
    iget-object v2, p1, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v1, 0x56

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    return v3

    :cond_1
    const/4 v4, -0x1

    if-ne v2, v1, :cond_2

    return v4

    :cond_2
    const/16 v1, 0x5a

    const/4 v5, -0x3

    if-eq v0, v1, :cond_11

    if-ne v2, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    const/16 v6, 0x43

    if-ne v0, v6, :cond_5

    .line 179
    iget p0, p1, Lgnu/bytecode/PrimType;->size:I

    if-le p0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, -0x3

    :goto_0
    return v4

    :cond_5
    if-ne v2, v6, :cond_7

    .line 181
    iget p0, p0, Lgnu/bytecode/PrimType;->size:I

    if-le p0, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, -0x3

    :goto_1
    return v3

    :cond_7
    const/16 p0, 0x44

    if-ne v0, p0, :cond_8

    return v3

    :cond_8
    if-ne v2, p0, :cond_9

    return v4

    :cond_9
    const/16 p0, 0x46

    if-ne v0, p0, :cond_a

    return v3

    :cond_a
    if-ne v2, p0, :cond_b

    return v4

    :cond_b
    const/16 p0, 0x4a

    if-ne v0, p0, :cond_c

    return v3

    :cond_c
    if-ne v2, p0, :cond_d

    return v4

    :cond_d
    const/16 p0, 0x49

    if-ne v0, p0, :cond_e

    return v3

    :cond_e
    if-ne v2, p0, :cond_f

    return v4

    :cond_f
    const/16 p0, 0x53

    if-ne v0, p0, :cond_10

    return v3

    :cond_10
    if-ne v2, p0, :cond_11

    return v4

    :cond_11
    :goto_2
    return v5
.end method

.method private static findInHierarchy(Ljava/lang/String;)C
    .locals 1

    const-string v0, "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;"

    .line 240
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public boxedType()Lgnu/bytecode/ClassType;
    .locals 2

    .line 69
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_4

    const/16 v1, 0x53

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const-string v0, "java.lang.Double"

    goto :goto_0

    :pswitch_1
    const-string v0, "java.lang.Character"

    goto :goto_0

    :pswitch_2
    const-string v0, "java.lang.Byte"

    goto :goto_0

    :cond_0
    const-string v0, "java.lang.Long"

    goto :goto_0

    :cond_1
    const-string v0, "java.lang.Integer"

    goto :goto_0

    :cond_2
    const-string v0, "java.lang.Boolean"

    goto :goto_0

    :cond_3
    const-string v0, "java.lang.Short"

    goto :goto_0

    :cond_4
    const-string v0, "java.lang.Float"

    .line 83
    :goto_0
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public charValue(Ljava/lang/Object;)C
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    return-object p1

    .line 23
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x20

    :goto_1
    const/16 v1, 0x42

    if-eq v0, v1, :cond_9

    const/16 v1, 0x44

    if-eq v0, v1, :cond_8

    const/16 v1, 0x46

    if-eq v0, v1, :cond_7

    const/16 v1, 0x53

    if-eq v0, v1, :cond_6

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x49

    if-eq v0, v1, :cond_4

    const/16 v1, 0x4a

    if-ne v0, v1, :cond_3

    .line 31
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "don\'t know how to coerce "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 34
    :cond_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 29
    :cond_6
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 32
    :cond_7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 33
    :cond_8
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 28
    :cond_9
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 8

    .line 246
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 252
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result p1

    invoke-static {p1}, Lgnu/bytecode/PrimType;->swappedCompareResult(I)I

    move-result p1

    return p1

    .line 253
    :cond_0
    check-cast p1, Lgnu/bytecode/PrimType;

    invoke-static {p0, p1}, Lgnu/bytecode/PrimType;->compare(Lgnu/bytecode/PrimType;Lgnu/bytecode/PrimType;)I

    move-result p1

    return p1

    .line 255
    :cond_1
    instance-of v0, p1, Lgnu/bytecode/ClassType;

    const/4 v1, -0x3

    if-nez v0, :cond_3

    .line 257
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_2

    return v1

    .line 260
    :cond_2
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result p1

    invoke-static {p1}, Lgnu/bytecode/PrimType;->swappedCompareResult(I)I

    move-result p1

    return p1

    .line 262
    :cond_3
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 263
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_4

    return v4

    :cond_4
    const/16 v5, 0x46

    const/4 v6, 0x1

    const/16 v7, 0x49

    if-eq v0, v5, :cond_c

    const/16 v5, 0x53

    if-eq v0, v5, :cond_b

    const/16 v5, 0x56

    if-eq v0, v5, :cond_a

    const/16 v5, 0x5a

    if-eq v0, v5, :cond_7

    if-eq v0, v7, :cond_6

    const/16 v5, 0x4a

    if-eq v0, v5, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v7, 0x41

    goto :goto_1

    :cond_5
    const/16 v7, 0x44

    goto :goto_1

    :cond_6
    const/16 v7, 0x43

    goto :goto_1

    :cond_7
    const-string v0, "java.lang.Boolean"

    .line 272
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    :pswitch_1
    const-string v0, "java.lang.Character"

    .line 275
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    :cond_9
    :goto_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_a
    return v6

    :cond_b
    const/16 v7, 0x42

    goto :goto_1

    :cond_c
    const/16 v7, 0x48

    :goto_1
    :pswitch_2
    if-eqz v7, :cond_f

    .line 287
    invoke-static {v3}, Lgnu/bytecode/PrimType;->findInHierarchy(Ljava/lang/String;)C

    move-result v0

    if-eqz v0, :cond_f

    if-ne v0, v7, :cond_d

    goto :goto_2

    :cond_d
    if-ge v0, v7, :cond_e

    const/4 v2, 0x1

    goto :goto_2

    :cond_e
    const/4 v2, -0x1

    :goto_2
    return v2

    :cond_f
    const-string v0, "java.lang.Object"

    .line 292
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lgnu/bytecode/PrimType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v0, :cond_10

    goto :goto_3

    :cond_10
    return v1

    :cond_11
    :goto_3
    return v4

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x20

    :goto_1
    const/16 v2, 0x5a

    if-ne v0, v2, :cond_2

    .line 136
    sget-object v0, Lgnu/bytecode/PrimType;->javalangBooleanType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 137
    sget-object v0, Lgnu/bytecode/PrimType;->booleanValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_3

    :cond_2
    const/16 v2, 0x56

    if-ne v0, v2, :cond_3

    .line 140
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    goto :goto_3

    .line 143
    :cond_3
    sget-object v1, Lgnu/bytecode/PrimType;->javalangNumberType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    const/16 v1, 0x49

    if-eq v0, v1, :cond_8

    const/16 v1, 0x53

    if-eq v0, v1, :cond_8

    const/16 v1, 0x42

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x4a

    if-ne v0, v1, :cond_5

    .line 147
    sget-object v0, Lgnu/bytecode/PrimType;->longValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_3

    :cond_5
    const/16 v1, 0x44

    if-ne v0, v1, :cond_6

    .line 149
    sget-object v0, Lgnu/bytecode/PrimType;->doubleValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_3

    :cond_6
    const/16 v1, 0x46

    if-ne v0, v1, :cond_7

    .line 151
    sget-object v0, Lgnu/bytecode/PrimType;->floatValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_3

    .line 154
    :cond_7
    invoke-super {p0, p1}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_3

    .line 145
    :cond_8
    :goto_2
    sget-object v0, Lgnu/bytecode/PrimType;->intValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    :goto_3
    return-void
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 4

    .line 88
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 89
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object v2

    const/16 v3, 0x5a

    if-ne v0, v3, :cond_0

    .line 92
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    const-string v0, "TRUE"

    .line 93
    invoke-virtual {v2, v0}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 94
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    const-string v0, "FALSE"

    .line 95
    invoke-virtual {v2, v0}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 96
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/bytecode/Type;

    aput-object p0, v0, v1

    .line 102
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    iget v1, v1, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    const/high16 v3, 0x310000    # 4.49994E-39f

    if-lt v1, v3, :cond_1

    const-string v1, "valueOf"

    .line 103
    invoke-virtual {v2, v1, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "<init>"

    .line 106
    invoke-virtual {v2, v1, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    .line 107
    invoke-virtual {p1, v2}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 108
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 109
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 111
    :goto_0
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    return-void
.end method

.method public emitIsInstance(Lgnu/bytecode/CodeAttr;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x20

    :goto_1
    const/16 v2, 0x5a

    if-ne v0, v2, :cond_2

    .line 119
    sget-object v0, Lgnu/bytecode/PrimType;->javalangBooleanType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    goto :goto_2

    :cond_2
    const/16 v2, 0x56

    if-ne v0, v2, :cond_3

    .line 122
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 123
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_2

    .line 127
    :cond_3
    sget-object v0, Lgnu/bytecode/PrimType;->javalangNumberType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    :goto_2
    return-void
.end method

.method public promotedType()Lgnu/bytecode/Type;
    .locals 2

    .line 209
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    return-object v0
.end method
