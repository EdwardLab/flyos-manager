.class public Lkawa/standard/begin;
.super Lkawa/lang/Syntax;
.source "begin.java"


# static fields
.field public static final begin:Lkawa/standard/begin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lkawa/standard/begin;

    invoke-direct {v0}, Lkawa/standard/begin;-><init>()V

    sput-object v0, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    const-string v1, "begin"

    .line 15
    invoke-virtual {v0, v1}, Lkawa/standard/begin;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 0

    .line 19
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 2

    .line 24
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object p2

    .line 25
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p2, v0, :cond_0

    .line 28
    iget-object p3, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
