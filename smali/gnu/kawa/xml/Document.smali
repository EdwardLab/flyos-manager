.class public Lgnu/kawa/xml/Document;
.super Ljava/lang/Object;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/xml/Document$DocReference;
    }
.end annotation


# static fields
.field private static cache:Ljava/util/HashMap;

.field private static docMapLocation:Lgnu/mapping/ThreadLocation;

.field public static final document:Lgnu/kawa/xml/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lgnu/kawa/xml/Document;

    invoke-direct {v0}, Lgnu/kawa/xml/Document;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document;->document:Lgnu/kawa/xml/Document;

    .line 39
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "document-map"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/Document;->docMapLocation:Lgnu/mapping/ThreadLocation;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLocalCache()V
    .locals 2

    .line 61
    sget-object v0, Lgnu/kawa/xml/Document;->docMapLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static clearSoftCache()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public static parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    .line 35
    invoke-static {p0, v0}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 36
    new-instance p0, Lgnu/kawa/xml/KDocument;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lgnu/kawa/xml/KDocument;-><init>(Lgnu/xml/NodeTree;I)V

    return-object p0
.end method

.method public static parse(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 22
    instance-of v1, p1, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 23
    move-object v2, p1

    check-cast v2, Lgnu/lists/XConsumer;

    invoke-interface {v2, p0}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    .line 24
    :cond_0
    invoke-static {p0, v0, p1}, Lgnu/xml/XMLParser;->parse(Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 25
    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v1, :cond_1

    .line 29
    check-cast p1, Lgnu/lists/XConsumer;

    invoke-interface {p1}, Lgnu/lists/XConsumer;->endEntity()V

    :cond_1
    return-void

    .line 26
    :cond_2
    new-instance p0, Lgnu/text/SyntaxException;

    const-string p1, "document function read invalid XML"

    invoke-direct {p0, p1, v0}, Lgnu/text/SyntaxException;-><init>(Ljava/lang/String;Lgnu/text/SourceMessages;)V

    throw p0
.end method

.method public static declared-synchronized parseCached(Lgnu/text/Path;)Lgnu/kawa/xml/KDocument;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lgnu/kawa/xml/Document;

    monitor-enter v0

    .line 85
    :goto_0
    :try_start_0
    sget-object v1, Lgnu/kawa/xml/Document$DocReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lgnu/kawa/xml/Document$DocReference;

    if-nez v1, :cond_4

    .line 91
    sget-object v1, Lgnu/kawa/xml/Document;->docMapLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v1}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v1

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v1, v2}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    if-nez v2, :cond_0

    .line 95
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 96
    invoke-virtual {v1, v2}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 98
    :cond_0
    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/kawa/xml/KDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 100
    monitor-exit v0

    return-object v1

    .line 102
    :cond_1
    :try_start_1
    sget-object v1, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/kawa/xml/Document$DocReference;

    if-eqz v1, :cond_3

    .line 105
    invoke-virtual {v1}, Lgnu/kawa/xml/Document$DocReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/kawa/xml/KDocument;

    if-nez v1, :cond_2

    .line 107
    sget-object v1, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    monitor-exit v0

    return-object v1

    .line 115
    :cond_3
    :goto_1
    :try_start_2
    invoke-static {p0}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v1

    .line 116
    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v2, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    new-instance v3, Lgnu/kawa/xml/Document$DocReference;

    invoke-direct {v3, p0, v1}, Lgnu/kawa/xml/Document$DocReference;-><init>(Lgnu/text/Path;Lgnu/kawa/xml/KDocument;)V

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    monitor-exit v0

    return-object v1

    .line 88
    :cond_4
    :try_start_3
    sget-object v2, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    iget-object v1, v1, Lgnu/kawa/xml/Document$DocReference;->key:Lgnu/text/Path;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static parseCached(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p0

    invoke-static {p0}, Lgnu/kawa/xml/Document;->parseCached(Lgnu/text/Path;)Lgnu/kawa/xml/KDocument;

    move-result-object p0

    return-object p0
.end method
