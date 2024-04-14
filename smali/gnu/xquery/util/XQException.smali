.class public Lgnu/xquery/util/XQException;
.super Ljava/lang/RuntimeException;
.source "XQException.java"


# static fields
.field public static FOER0000_QNAME:Lgnu/mapping/Symbol;


# instance fields
.field public code:Lgnu/mapping/Symbol;

.field public description:Ljava/lang/String;

.field public errorValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "http://www.w3.org/2005/xqt-errors"

    const-string v1, "FOER0000"

    const-string v2, "err"

    .line 19
    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/XQException;->FOER0000_QNAME:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 13
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lgnu/xquery/util/XQException;->code:Lgnu/mapping/Symbol;

    .line 15
    iput-object p2, p0, Lgnu/xquery/util/XQException;->description:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lgnu/xquery/util/XQException;->errorValue:Ljava/lang/Object;

    return-void
.end method

.method public static error()V
    .locals 3

    .line 24
    new-instance v0, Lgnu/xquery/util/XQException;

    sget-object v1, Lgnu/xquery/util/XQException;->FOER0000_QNAME:Lgnu/mapping/Symbol;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgnu/xquery/util/XQException;-><init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public static error(Lgnu/mapping/Symbol;)V
    .locals 2

    .line 29
    new-instance v0, Lgnu/xquery/util/XQException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lgnu/xquery/util/XQException;-><init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 34
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_1

    .line 35
    :cond_0
    sget-object p0, Lgnu/xquery/util/XQException;->FOER0000_QNAME:Lgnu/mapping/Symbol;

    .line 36
    :cond_1
    new-instance v0, Lgnu/xquery/util/XQException;

    check-cast p0, Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lgnu/xquery/util/XQException;-><init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public static error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 41
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_1

    .line 42
    :cond_0
    sget-object p0, Lgnu/xquery/util/XQException;->FOER0000_QNAME:Lgnu/mapping/Symbol;

    .line 43
    :cond_1
    new-instance v0, Lgnu/xquery/util/XQException;

    check-cast p0, Lgnu/mapping/Symbol;

    invoke-direct {v0, p0, p1, p2}, Lgnu/xquery/util/XQException;-><init>(Lgnu/mapping/Symbol;Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 49
    iget-object v1, p0, Lgnu/xquery/util/XQException;->description:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "XQuery-error"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :goto_0
    iget-object v1, p0, Lgnu/xquery/util/XQException;->code:Lgnu/mapping/Symbol;

    if-eqz v1, :cond_2

    const-string v1, " ["

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    iget-object v1, p0, Lgnu/xquery/util/XQException;->code:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    :cond_1
    iget-object v1, p0, Lgnu/xquery/util/XQException;->code:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    :cond_2
    iget-object v1, p0, Lgnu/xquery/util/XQException;->errorValue:Ljava/lang/Object;

    if-eqz v1, :cond_3

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v1, v2, :cond_3

    const-string v1, " value: "

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-object v1, p0, Lgnu/xquery/util/XQException;->errorValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 70
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
