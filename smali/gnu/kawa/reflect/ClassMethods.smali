.class public Lgnu/kawa/reflect/ClassMethods;
.super Lgnu/mapping/Procedure2;
.source "ClassMethods.java"


# static fields
.field public static final classMethods:Lgnu/kawa/reflect/ClassMethods;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lgnu/kawa/reflect/ClassMethods;

    invoke-direct {v0}, Lgnu/kawa/reflect/ClassMethods;-><init>()V

    sput-object v0, Lgnu/kawa/reflect/ClassMethods;->classMethods:Lgnu/kawa/reflect/ClassMethods;

    const-string v1, "class-methods"

    .line 12
    invoke-virtual {v0, v1}, Lgnu/kawa/reflect/ClassMethods;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;
    .locals 3

    const/4 v0, 0x0

    .line 229
    invoke-static {p0, p1, p2, v0, p3}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object p2

    const/4 p3, 0x0

    move-object v1, v0

    .line 232
    :goto_0
    array-length v2, p2

    if-ge p3, v2, :cond_2

    .line 234
    aget-object v2, p2, p3

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lgnu/expr/GenericProc;

    invoke-direct {v0}, Lgnu/expr/GenericProc;-><init>()V

    .line 238
    invoke-virtual {v0, v1}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0, v2}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    move-object v1, v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 246
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    return-object v0

    :cond_3
    return-object v1
.end method

.method public static apply(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/MethodProc;
    .locals 3

    .line 30
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    .line 32
    :cond_0
    instance-of v0, p1, Lgnu/bytecode/ClassType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 33
    check-cast p1, Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 34
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_3

    instance-of v0, p1, Lgnu/lists/FString;

    if-nez v0, :cond_3

    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 38
    :cond_2
    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw p1

    .line 36
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    .line 39
    :goto_1
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_5

    instance-of v0, p2, Lgnu/lists/FString;

    if-nez v0, :cond_5

    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 43
    :cond_4
    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2, v1}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw p1

    .line 41
    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "<init>"

    .line 44
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 45
    invoke-static {p0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 46
    :cond_6
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object p2

    invoke-static {p1, p0, v2, p2}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object p2

    if-eqz p2, :cond_7

    return-object p2

    .line 48
    :cond_7
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no applicable method named `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static checkName(Lgnu/expr/Expression;)Ljava/lang/String;
    .locals 2

    .line 281
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 283
    check-cast p0, Lgnu/expr/QuoteExp;

    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 284
    instance-of v0, p0, Lgnu/lists/FString;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    .line 287
    check-cast p0, Lgnu/mapping/Symbol;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1

    .line 285
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method static checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;
    .locals 2

    .line 258
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 260
    check-cast p0, Lgnu/expr/QuoteExp;

    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 262
    instance-of v0, p0, Lgnu/lists/FString;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    .line 265
    check-cast p0, Lgnu/mapping/Symbol;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    return-object v1

    .line 263
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 268
    :goto_1
    invoke-static {p0}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    .line 270
    :cond_3
    invoke-static {p0, p1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method public static getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;
    .locals 8

    .line 100
    sget-object v0, Lgnu/bytecode/Type;->tostring_type:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_0

    .line 101
    sget-object p0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    .line 102
    :cond_0
    new-instance v6, Lgnu/kawa/reflect/MethodFilter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x50

    if-ne p2, v7, :cond_1

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v5, p0

    :goto_0
    move-object v0, v6

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lgnu/kawa/reflect/MethodFilter;-><init>(Ljava/lang/String;IILgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;)V

    const/4 p3, 0x0

    if-eq p2, v7, :cond_3

    const-string v0, "<init>"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 105
    :goto_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x2

    .line 106
    :goto_3
    invoke-virtual {p0, v6, v1, v0}, Lgnu/bytecode/ObjectType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    if-nez p1, :cond_6

    .line 107
    instance-of v1, p0, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 110
    :cond_5
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v6, p3, v0}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    :cond_6
    if-eqz p1, :cond_7

    .line 111
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_4

    :cond_7
    invoke-static {v0}, Lgnu/kawa/reflect/ClassMethods;->removeRedundantMethods(Ljava/util/Vector;)I

    move-result v1

    .line 114
    :goto_4
    new-array v2, v1, [Lgnu/expr/PrimProcedure;

    :goto_5
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/Method;

    if-nez p1, :cond_8

    .line 119
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    if-eq v4, p0, :cond_8

    .line 121
    invoke-virtual {p0}, Lgnu/bytecode/ObjectType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 122
    instance-of v5, v4, Lgnu/bytecode/ClassType;

    if-eqz v5, :cond_8

    .line 126
    new-instance v5, Lgnu/bytecode/Method;

    check-cast v4, Lgnu/bytecode/ClassType;

    invoke-direct {v5, v3, v4}, Lgnu/bytecode/Method;-><init>(Lgnu/bytecode/Method;Lgnu/bytecode/ClassType;)V

    move-object v3, v5

    .line 129
    :cond_8
    new-instance v4, Lgnu/expr/PrimProcedure;

    invoke-direct {v4, v3, p2, p4}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V

    add-int/lit8 v3, p3, 0x1

    .line 130
    aput-object v4, v2, p3

    move p3, v3

    goto :goto_5

    :cond_9
    return-object v2
.end method

.method private static removeRedundantMethods(Ljava/util/Vector;)I
    .locals 12

    .line 56
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_6

    .line 60
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/Method;

    .line 61
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v3

    .line 62
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v4

    .line 63
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_5

    .line 66
    invoke-virtual {p0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/Method;

    .line 67
    invoke-virtual {v7}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v8

    .line 68
    array-length v9, v8

    if-eq v5, v9, :cond_0

    goto :goto_2

    :cond_0
    move v9, v5

    :cond_1
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_2

    .line 73
    aget-object v10, v4, v9

    aget-object v11, v8, v9

    if-eq v10, v11, :cond_1

    :cond_2
    if-ltz v9, :cond_3

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v7}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 79
    invoke-virtual {p0, v2, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_4
    add-int/lit8 v2, v0, -0x1

    .line 80
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public static selectApplicable([Lgnu/expr/PrimProcedure;I)I
    .locals 9

    .line 184
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 190
    aget-object v6, p0, v2

    invoke-virtual {v6}, Lgnu/expr/PrimProcedure;->numArgs()I

    move-result v6

    .line 191
    invoke-static {v6}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v7

    .line 192
    invoke-static {v6}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v6

    if-ge p1, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    :goto_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_0
    if-le p1, v6, :cond_1

    if-ltz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v0, -0x1

    .line 208
    aget-object v7, p0, v6

    .line 209
    aget-object v8, p0, v2

    aput-object v8, p0, v6

    .line 210
    aput-object v7, p0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-lez v3, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    if-lez v4, :cond_5

    const/high16 v1, -0xf0000

    goto :goto_3

    :cond_5
    if-lez v5, :cond_6

    const/high16 v1, -0xe0000

    :cond_6
    :goto_3
    return v1
.end method

.method public static selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J
    .locals 7

    .line 146
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 151
    aget-object v4, p0, v1

    invoke-virtual {v4, p1}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v4

    if-gez v4, :cond_0

    add-int/lit8 v4, v0, -0x1

    .line 155
    aget-object v5, p0, v4

    .line 156
    aget-object v6, p0, v1

    aput-object v6, p0, v4

    .line 157
    aput-object v5, p0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    .line 163
    aget-object v4, p0, v2

    .line 164
    aget-object v5, p0, v1

    aput-object v5, p0, v2

    .line 165
    aput-object v4, p0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    int-to-long p0, v2

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    int-to-long v0, v3

    add-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object p1

    return-object p1
.end method
