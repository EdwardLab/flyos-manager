.class public Lkawa/lang/PatternScope;
.super Lgnu/expr/LetExp;
.source "PatternScope.java"


# instance fields
.field public matchArray:Lgnu/expr/Declaration;

.field public patternNesting:Ljava/lang/StringBuffer;

.field public pattern_names:Ljava/util/Vector;

.field previousSyntax:Lkawa/lang/PatternScope;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    return-void
.end method

.method public static pop(Lkawa/lang/Translator;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v0, v0, Lkawa/lang/PatternScope;->previousSyntax:Lkawa/lang/PatternScope;

    iput-object v0, p0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    return-void
.end method

.method public static push(Lkawa/lang/Translator;)Lkawa/lang/PatternScope;
    .locals 3

    .line 34
    new-instance v0, Lkawa/lang/PatternScope;

    invoke-direct {v0}, Lkawa/lang/PatternScope;-><init>()V

    .line 35
    iget-object v1, p0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    .line 36
    iput-object v1, v0, Lkawa/lang/PatternScope;->previousSyntax:Lkawa/lang/PatternScope;

    .line 37
    iput-object v0, p0, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    .line 41
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, v0, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 45
    :cond_0
    iget-object v2, v1, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    iput-object v2, v0, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    .line 46
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v1, v1, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    .line 49
    :goto_0
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object p0

    iput-object p0, v0, Lkawa/lang/PatternScope;->outer:Lgnu/expr/ScopeExp;

    return-object v0
.end method
