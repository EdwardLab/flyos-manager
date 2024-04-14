.class public Lgnu/kawa/reflect/SlotGet;
.super Lgnu/mapping/Procedure2;
.source "SlotGet.java"

# interfaces
.implements Lgnu/mapping/HasSetter;
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final field:Lgnu/kawa/reflect/SlotGet;

.field static noClasses:[Ljava/lang/Class;

.field public static final slotRef:Lgnu/kawa/reflect/SlotGet;

.field public static final staticField:Lgnu/kawa/reflect/SlotGet;


# instance fields
.field isStatic:Z

.field setter:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 10
    sput-object v1, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    .line 16
    new-instance v1, Lgnu/kawa/reflect/SlotGet;

    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    const-string v3, "field"

    invoke-direct {v1, v3, v0, v2}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v1, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    .line 18
    new-instance v1, Lgnu/kawa/reflect/SlotGet;

    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    const-string v3, "slot-ref"

    invoke-direct {v1, v3, v0, v2}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v1, Lgnu/kawa/reflect/SlotGet;->slotRef:Lgnu/kawa/reflect/SlotGet;

    .line 20
    new-instance v0, Lgnu/kawa/reflect/SlotGet;

    sget-object v1, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    const-string v2, "static-field"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure2;-><init>(Ljava/lang/String;)V

    .line 26
    iput-boolean p2, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    .line 27
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string p2, "gnu.kawa.reflect.CompileReflect:validateApplySlotGet"

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/reflect/SlotGet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;Z)V

    .line 34
    iput-object p3, p0, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    return-void
.end method

.method static coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    .line 186
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 187
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 188
    :cond_0
    instance-of v0, p0, Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    .line 189
    check-cast p0, Lgnu/bytecode/Type;

    invoke-virtual {p0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 190
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "argument is neither Class nor Type"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 39
    sget-object v0, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    invoke-virtual {v0, p0, p1}, Lgnu/kawa/reflect/SlotGet;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;
    .locals 6

    if-eqz p0, :cond_0

    .line 97
    invoke-static {p1}, Lgnu/kawa/reflect/SlotGet;->coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const-string v1, "length"

    if-ne p3, v1, :cond_1

    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "class"

    if-ne p3, v1, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x0

    const/16 v2, 0x27

    const/4 v3, 0x1

    if-eqz p3, :cond_5

    .line 115
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    if-eqz p0, :cond_4

    .line 123
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    goto :goto_2

    .line 125
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot access non-static field \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_4
    :goto_2
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p6, v5, v4}, Lgnu/expr/Language;->coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v4

    .line 137
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    const/4 v1, 0x1

    :cond_5
    :goto_3
    if-eqz p4, :cond_6

    goto :goto_4

    :cond_6
    :try_start_2
    const-string p4, "get"

    .line 149
    invoke-static {p4, p2}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 151
    :goto_4
    sget-object v4, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v0, p4, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_6

    :catch_3
    nop

    goto :goto_8

    :catch_4
    move-exception p0

    goto/16 :goto_9

    :catch_5
    nop

    if-eqz p5, :cond_7

    goto :goto_5

    :cond_7
    :try_start_3
    const-string p4, "is"

    .line 153
    invoke-static {p4, p2}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 155
    :goto_5
    sget-object p2, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v0, p5, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    move-object p4, p5

    :goto_6
    if-eqz p0, :cond_9

    .line 158
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    goto :goto_7

    .line 160
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot call non-static getter method \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_9
    :goto_7
    sget-object p0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 163
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p6, p1, p0}, Lgnu/expr/Language;->coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6

    return-object p0

    :catch_6
    move v3, v1

    :goto_8
    if-eqz v3, :cond_a

    .line 178
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal access for field "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no such field "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 168
    :goto_9
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;
    .locals 2

    .line 213
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/ObjectType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 218
    sget-object p2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 219
    :cond_0
    invoke-virtual {p2, v0, p0}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    :cond_1
    const-string p2, "get"

    .line 224
    invoke-static {p2, p1}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 225
    sget-object p2, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 359
    new-instance p0, Lgnu/expr/QuoteExp;

    invoke-direct {p0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 360
    new-instance p0, Lgnu/expr/ApplyExp;

    sget-object p1, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    invoke-direct {p0, p1, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object p0
.end method

.method public static staticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 44
    sget-object v0, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    invoke-virtual {v0, p0, p1}, Lgnu/kawa/reflect/SlotGet;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 51
    instance-of v0, p2, Lgnu/bytecode/Field;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    check-cast p2, Lgnu/bytecode/Field;

    invoke-virtual {p2}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 54
    invoke-static {p2, v0}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    move-object v6, v1

    move-object v7, v6

    move-object v1, p2

    goto :goto_3

    .line 56
    :cond_0
    instance-of v0, p2, Lgnu/bytecode/Method;

    if-eqz v0, :cond_3

    .line 58
    check-cast p2, Lgnu/bytecode/Method;

    invoke-virtual {p2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 59
    invoke-static {p2, v0}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "get"

    .line 60
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    const-string v2, "is"

    .line 62
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p2

    move-object p2, v1

    goto :goto_1

    :cond_2
    move-object p2, v1

    move-object v2, p2

    :goto_1
    move-object v6, p2

    move-object v4, v0

    move-object v7, v2

    goto :goto_3

    .line 66
    :cond_3
    instance-of v0, p2, Lgnu/mapping/SimpleSymbol;

    if-nez v0, :cond_5

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 78
    :cond_4
    new-instance p1, Lgnu/mapping/WrongType;

    const/4 v0, 0x2

    const-string v1, "string"

    invoke-direct {p1, p0, v0, p2, v1}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_3
    const-string p2, "class"

    .line 80
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "length"

    if-eqz v0, :cond_6

    move-object v5, p2

    goto :goto_4

    .line 82
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    move-object v5, v2

    goto :goto_4

    :cond_7
    move-object v5, v1

    .line 84
    :goto_4
    iget-boolean v2, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v8

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lgnu/kawa/reflect/SlotGet;->getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .line 234
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const/4 v1, 0x0

    .line 235
    aget-object v2, v0, v1

    const/4 v3, 0x1

    .line 236
    aget-object v4, v0, v3

    .line 237
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v5

    .line 238
    iget-boolean v6, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    if-eqz v6, :cond_0

    invoke-virtual {v5, v2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 240
    :goto_0
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 242
    instance-of v7, v2, Lgnu/bytecode/ObjectType;

    if-eqz v7, :cond_7

    instance-of v7, v4, Lgnu/expr/QuoteExp;

    if-eqz v7, :cond_7

    .line 244
    move-object v7, v2

    check-cast v7, Lgnu/bytecode/ObjectType;

    .line 245
    move-object v8, v4

    check-cast v8, Lgnu/expr/QuoteExp;

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 246
    instance-of v9, v8, Lgnu/bytecode/Field;

    if-eqz v9, :cond_4

    .line 248
    check-cast v8, Lgnu/bytecode/Field;

    .line 249
    invoke-virtual {v8}, Lgnu/bytecode/Field;->getModifiers()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 251
    :goto_1
    aget-object p1, v0, v1

    if-eqz v3, :cond_2

    sget-object v0, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    goto :goto_2

    :cond_2
    invoke-static {v7}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, p2, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    if-eqz v3, :cond_3

    .line 287
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_3

    .line 290
    :cond_3
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 291
    :goto_3
    invoke-virtual {v8}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {v5, p1}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object p1

    .line 292
    invoke-virtual {p3, p2, p1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void

    .line 295
    :cond_4
    instance-of v3, v8, Lgnu/bytecode/Method;

    if-eqz v3, :cond_7

    .line 297
    check-cast v8, Lgnu/bytecode/Method;

    .line 298
    invoke-virtual {v8}, Lgnu/bytecode/Method;->getModifiers()I

    .line 299
    invoke-virtual {v8}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result p1

    .line 300
    aget-object v0, v0, v1

    if-eqz p1, :cond_5

    sget-object v1, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    goto :goto_4

    :cond_5
    invoke-static {v7}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    if-eqz p1, :cond_6

    .line 304
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_5

    .line 306
    :cond_6
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 307
    :goto_5
    invoke-virtual {v8}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void

    .line 311
    :cond_7
    invoke-static {v4}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v3

    .line 312
    instance-of v4, v2, Lgnu/bytecode/ArrayType;

    if-eqz v4, :cond_8

    const-string v4, "length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    if-nez v3, :cond_8

    .line 314
    aget-object p1, v0, v1

    invoke-static {v2}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 315
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 316
    sget-object p1, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p3, p2, p1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void

    .line 319
    :cond_8
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 4

    .line 324
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 327
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 328
    aget-object p1, p1, v1

    .line 329
    instance-of v2, p1, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_2

    .line 331
    move-object v2, p1

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 332
    instance-of v3, v2, Lgnu/bytecode/Field;

    if-eqz v3, :cond_0

    .line 333
    check-cast v2, Lgnu/bytecode/Field;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 334
    :cond_0
    instance-of v3, v2, Lgnu/bytecode/Method;

    if-eqz v3, :cond_1

    .line 335
    check-cast v2, Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 336
    :cond_1
    iget-boolean v2, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_2

    invoke-static {p1, v1}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 338
    sget-object p1, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    return-object p1

    .line 341
    :cond_2
    sget-object p1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object p1
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 1

    .line 346
    iget-object v0, p0, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    invoke-super {p0}, Lgnu/mapping/Procedure2;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public set2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 203
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setN([Ljava/lang/Object;)V
    .locals 3

    .line 195
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 198
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lgnu/kawa/reflect/SlotGet;->set2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 197
    :cond_0
    new-instance p1, Lgnu/mapping/WrongArguments;

    invoke-virtual {p0}, Lgnu/kawa/reflect/SlotGet;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw p1
.end method
