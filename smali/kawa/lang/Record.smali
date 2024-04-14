.class public Lkawa/lang/Record;
.super Ljava/lang/Object;
.source "Record.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    check-cast p0, Lgnu/bytecode/ClassType;

    .line 45
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 48
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x9

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :goto_1
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object p0

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    .line 55
    :cond_2
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw p0
.end method

.method public static isRecord(Ljava/lang/Object;)Z
    .locals 0

    .line 17
    instance-of p0, p0, Lkawa/lang/Record;

    return p0
.end method

.method public static makeRecordType(Ljava/lang/String;Lgnu/lists/LList;)Lgnu/bytecode/ClassType;
    .locals 8

    const-string v0, "kawa.lang.Record"

    .line 171
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 172
    invoke-static {p0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v2, Lgnu/bytecode/ClassType;

    invoke-direct {v2, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2, v0}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    const/16 v3, 0x21

    .line 175
    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->setModifiers(I)V

    .line 178
    sget-object v3, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v4, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v5, "<init>"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v3, v4, v6}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    .line 180
    sget-object v4, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v5, v4, v7, v6}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 183
    invoke-virtual {v3}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 185
    invoke-virtual {v3, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 186
    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 187
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    sget-object v0, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v3, Lgnu/expr/Compilation;->typeString:Lgnu/bytecode/ClassType;

    const-string v4, "getTypeName"

    invoke-virtual {v2, v4, v0, v3, v6}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 192
    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 198
    :cond_0
    :goto_0
    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, p0, :cond_1

    .line 200
    check-cast p1, Lgnu/lists/Pair;

    .line 201
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 203
    invoke-static {p0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v0, v3, v6}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgnu/bytecode/Field;->setSourceName(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lgnu/lists/LList;

    goto :goto_0

    :cond_1
    new-array p0, v6, [[B

    new-array p1, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, p1, v0

    .line 218
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v3

    aput-object v3, p0, v0

    .line 219
    new-instance v0, Lgnu/bytecode/ArrayClassLoader;

    invoke-direct {v0, p1, p0}, Lgnu/bytecode/ArrayClassLoader;-><init>([Ljava/lang/String;[[B)V

    .line 222
    :try_start_0
    invoke-virtual {v0, v1}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 223
    invoke-static {p0, v2}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 228
    new-instance p1, Ljava/lang/InternalError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static set1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 86
    :try_start_0
    invoke-static {v0, p1}, Lkawa/lang/Record;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 88
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 98
    :catch_0
    new-instance p0, Lkawa/lang/GenericError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal access for field "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :catch_1
    new-instance p0, Lkawa/lang/GenericError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such field "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static typeFieldNames(Lgnu/bytecode/ClassType;)Lgnu/lists/LList;
    .locals 0

    .line 275
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkawa/lang/Record;->typeFieldNames(Ljava/lang/Class;)Lgnu/lists/LList;

    move-result-object p0

    return-object p0
.end method

.method public static typeFieldNames(Ljava/lang/Class;)Lgnu/lists/LList;
    .locals 4

    .line 234
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 257
    invoke-static {p0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    check-cast p0, Lgnu/bytecode/ClassType;

    .line 258
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object p0

    .line 259
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    :goto_0
    if-eqz p0, :cond_1

    .line 262
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x9

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 264
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object p0

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p0

    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_2

    .line 268
    new-instance v2, Lgnu/lists/Pair;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v1, :cond_1

    goto :goto_2

    .line 109
    :cond_1
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    .line 110
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 113
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x9

    if-eq v3, v0, :cond_2

    goto :goto_1

    .line 119
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v3

    .line 120
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 121
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 111
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    new-instance v0, Lgnu/mapping/WrappedException;

    invoke-direct {v0, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v2
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 63
    :try_start_0
    invoke-static {p2, p1}, Lkawa/lang/Record;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 72
    :catch_0
    new-instance p2, Lkawa/lang/GenericError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal access for field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw p2

    .line 68
    :catch_1
    new-instance v0, Lkawa/lang/GenericError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/16 v1, 0x3039

    const/4 v2, 0x0

    .line 23
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 25
    aget-object v3, v0, v2

    .line 29
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1

    .line 166
    invoke-virtual {p0}, Lkawa/lang/Record;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-static {p0, p1, p2}, Lkawa/lang/Record;->set1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 135
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "#<"

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {p0}, Lkawa/lang/Record;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    .line 139
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x9

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_2

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v2

    .line 149
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "#<illegal-access>"

    :goto_1
    const/16 v3, 0x20

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ": "

    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 140
    :goto_2
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ">"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
