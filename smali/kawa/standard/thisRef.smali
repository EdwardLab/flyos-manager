.class public Lkawa/standard/thisRef;
.super Lkawa/lang/Syntax;
.source "thisRef.java"


# static fields
.field public static final thisSyntax:Lkawa/standard/thisRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lkawa/standard/thisRef;

    invoke-direct {v0}, Lkawa/standard/thisRef;-><init>()V

    sput-object v0, Lkawa/standard/thisRef;->thisSyntax:Lkawa/standard/thisRef;

    const-string v1, "this"

    .line 10
    invoke-virtual {v0, v1}, Lkawa/standard/thisRef;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 3

    .line 14
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p1, v0, :cond_6

    .line 16
    iget-object p1, p2, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_3

    :cond_2
    :goto_1
    const/16 v1, 0x65

    if-eqz p1, :cond_5

    .line 21
    iget-object v2, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v2, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    iget-object v2, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "use of \'this\' in a static method"

    .line 24
    invoke-virtual {p2, v1, p1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_3

    .line 27
    :cond_4
    new-instance p2, Lgnu/expr/Declaration;

    sget-object v1, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {p2, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p1, v0, p2}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 29
    iget-object p1, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v0, 0x1000

    invoke-virtual {p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    move-object v0, p2

    goto :goto_3

    :cond_5
    :goto_2
    const-string p1, "use of \'this\' not in a named method"

    .line 22
    invoke-virtual {p2, v1, p1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 32
    :goto_3
    new-instance p1, Lgnu/expr/ThisExp;

    invoke-direct {p1, v0}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    return-object p1

    :cond_6
    const-string p1, "this with parameter not implemented"

    .line 35
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
