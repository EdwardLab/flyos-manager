.class public Lgnu/commonlisp/lang/prog1;
.super Lkawa/lang/Syntax;
.source "prog1.java"


# static fields
.field public static final prog1:Lgnu/commonlisp/lang/prog1;

.field public static final prog2:Lgnu/commonlisp/lang/prog1;


# instance fields
.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lgnu/commonlisp/lang/prog1;

    const-string v1, "prog1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/commonlisp/lang/prog1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/commonlisp/lang/prog1;->prog1:Lgnu/commonlisp/lang/prog1;

    .line 12
    new-instance v0, Lgnu/commonlisp/lang/prog1;

    const-string v1, "prog2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lgnu/commonlisp/lang/prog1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/commonlisp/lang/prog1;->prog2:Lgnu/commonlisp/lang/prog1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 16
    iput p2, p0, Lgnu/commonlisp/lang/prog1;->index:I

    .line 17
    invoke-virtual {p0, p1}, Lgnu/commonlisp/lang/prog1;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 7

    .line 22
    invoke-static {p1}, Lgnu/lists/LList;->length(Ljava/lang/Object;)I

    move-result v0

    .line 23
    iget v1, p0, Lgnu/commonlisp/lang/prog1;->index:I

    if-ge v0, v1, :cond_0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "too few expressions in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/commonlisp/lang/prog1;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 27
    check-cast p1, Lgnu/lists/Pair;

    .line 28
    new-instance v0, Lgnu/expr/BeginExp;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    sget-object v2, Lgnu/commonlisp/lang/prog1;->prog1:Lgnu/commonlisp/lang/prog1;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Lgnu/commonlisp/lang/prog1;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v0

    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [Lgnu/expr/Expression;

    .line 34
    new-instance v3, Lgnu/expr/LetExp;

    invoke-direct {v3, v2}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 35
    new-array v4, v0, [Lgnu/expr/Expression;

    .line 36
    check-cast p1, Lgnu/lists/Pair;

    .line 37
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 38
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v6, v2, :cond_2

    .line 41
    check-cast p1, Lgnu/lists/Pair;

    .line 42
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    aput-object v2, v4, v6

    .line 43
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 45
    move-object v0, p1

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v3, p1}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object p1

    .line 46
    new-instance v0, Lgnu/expr/ReferenceExp;

    invoke-direct {v0, p1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v0, v4, v2

    .line 47
    invoke-static {v4}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, v3, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 48
    invoke-virtual {p2}, Lkawa/lang/Translator;->mustCompileHere()V

    return-object v3
.end method
