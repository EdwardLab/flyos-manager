.class public Lgnu/kawa/reflect/InstanceOf;
.super Lgnu/mapping/Procedure2;
.source "InstanceOf.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static instanceMethod:Lgnu/bytecode/Method;

.field static typeType:Lgnu/bytecode/ClassType;


# instance fields
.field protected language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 12
    iput-object p1, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    .line 13
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v0, "gnu.kawa.reflect.CompileReflect:validateApplyInstanceOf"

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/reflect/InstanceOf;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;)V

    .line 20
    invoke-virtual {p0, p2}, Lgnu/kawa/reflect/InstanceOf;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1

    .line 92
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    const/4 v0, 0x0

    .line 93
    invoke-interface {p0, v0, v0, p2}, Lgnu/expr/TypeValue;->emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 95
    instance-of p0, p3, Lgnu/expr/ConditionalTarget;

    if-eqz p0, :cond_0

    .line 97
    move-object v0, p3

    check-cast v0, Lgnu/expr/ConditionalTarget;

    .line 98
    iget-object p0, v0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 101
    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 102
    :goto_0
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    if-eqz v0, :cond_1

    .line 104
    iget-object p0, v0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 106
    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 107
    :goto_1
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    if-nez v0, :cond_2

    .line 109
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 25
    iget-object v0, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    invoke-virtual {v0, p2}, Lgnu/expr/Language;->asType(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object p2

    .line 26
    instance-of v0, p2, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_0

    .line 27
    check-cast p2, Lgnu/bytecode/PrimType;

    invoke-virtual {p2}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object p2

    .line 28
    :cond_0
    iget-object v0, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    invoke-virtual {p2, p1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 7

    .line 36
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    const/4 v1, 0x1

    .line 39
    aget-object v2, p1, v1

    .line 40
    instance-of v3, v2, Lgnu/expr/QuoteExp;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 44
    :try_start_0
    iget-object v3, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lgnu/expr/Language;->asType(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v2, 0x77

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown type spec: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .line 52
    :cond_0
    iget-object v3, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    invoke-virtual {v3, v2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 55
    instance-of v1, v2, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_1

    .line 56
    check-cast v2, Lgnu/bytecode/PrimType;

    invoke-virtual {v2}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 57
    :cond_1
    aget-object p1, p1, v3

    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 58
    instance-of p1, v2, Lgnu/expr/TypeValue;

    if-eqz p1, :cond_2

    .line 60
    check-cast v2, Lgnu/expr/TypeValue;

    invoke-interface {v2, v4, p2, p3}, Lgnu/expr/TypeValue;->emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 64
    :cond_2
    invoke-virtual {v2, v0}, Lgnu/bytecode/Type;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 65
    invoke-virtual {p2, v2}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 69
    :cond_3
    sget-object v2, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    if-nez v2, :cond_4

    const-string v2, "gnu.bytecode.Type"

    .line 71
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    sput-object v2, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    .line 72
    sget-object v4, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v5, Lgnu/bytecode/Type;->boolean_type:Lgnu/bytecode/PrimType;

    const-string v6, "isInstance"

    invoke-virtual {v2, v6, v4, v5, v1}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/kawa/reflect/InstanceOf;->instanceMethod:Lgnu/bytecode/Method;

    .line 77
    :cond_4
    aget-object v1, p1, v1

    sget-object v2, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, p2, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 78
    aget-object p1, p1, v3

    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 79
    sget-object p1, Lgnu/kawa/reflect/InstanceOf;->instanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 81
    :goto_1
    iget-object p1, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1

    .line 86
    iget-object p1, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method
