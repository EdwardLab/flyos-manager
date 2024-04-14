.class public Lgnu/kawa/functions/MakeList;
.super Lgnu/mapping/ProcedureN;
.source "MakeList.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final list:Lgnu/kawa/functions/MakeList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lgnu/kawa/functions/MakeList;

    invoke-direct {v0}, Lgnu/kawa/functions/MakeList;-><init>()V

    sput-object v0, Lgnu/kawa/functions/MakeList;->list:Lgnu/kawa/functions/MakeList;

    const-string v1, "list"

    .line 16
    invoke-virtual {v0, v1}, Lgnu/kawa/functions/MakeList;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static compile([Lgnu/expr/Expression;ILgnu/expr/Compilation;)V
    .locals 7

    .line 41
    array-length v0, p0

    sub-int/2addr v0, p1

    .line 42
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    if-nez v0, :cond_0

    .line 45
    new-instance p0, Lgnu/expr/QuoteExp;

    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {p0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sget-object p1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p0, p2, p1}, Lgnu/expr/QuoteExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-gt v0, v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    add-int v4, p1, v2

    .line 50
    aget-object v4, p0, v4

    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v4, p2, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_1
    sget-object p0, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "list"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object p0

    .line 53
    invoke-virtual {v1, p0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_3

    .line 57
    :cond_2
    aget-object v4, p0, p1

    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v4, p2, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 58
    sget-object v4, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v5, "list1"

    invoke-virtual {v4, v5, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    .line 60
    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    const/4 v4, 0x1

    .line 61
    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    add-int/2addr p1, v4

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, v2, :cond_3

    .line 66
    aget-object v5, p0, p1

    sget-object v6, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, p2, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 v5, p1, 0x1

    .line 67
    aget-object v5, p0, v5

    sget-object v6, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, p2, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 v5, p1, 0x2

    .line 68
    aget-object v5, p0, v5

    sget-object v6, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, p2, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 v5, p1, 0x3

    .line 69
    aget-object v5, p0, v5

    sget-object v6, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, p2, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 v0, v0, -0x4

    add-int/lit8 p1, p1, 0x4

    .line 71
    sget-object v5, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v6, "chain4"

    invoke-virtual {v5, v6, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v5

    .line 72
    invoke-virtual {v1, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_1

    :cond_3
    :goto_2
    if-lez v0, :cond_4

    .line 77
    aget-object v2, p0, p1

    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p2, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p1, v4

    .line 79
    sget-object v2, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v5, "chain1"

    invoke-virtual {v2, v5, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    :goto_3
    return-void
.end method

.method public static list$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 20
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 21
    array-length v1, p0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 22
    new-instance v2, Lgnu/lists/Pair;

    aget-object v3, p0, v1

    invoke-direct {v2, v3, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-static {p1}, Lgnu/kawa/functions/MakeList;->list$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2

    .line 33
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    invoke-static {v0, v1, p2}, Lgnu/kawa/functions/MakeList;->compile([Lgnu/expr/Expression;ILgnu/expr/Compilation;)V

    .line 35
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 88
    array-length p1, p1

    if-lez p1, :cond_0

    sget-object p1, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_0
    sget-object p1, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    :goto_0
    return-object p1
.end method
