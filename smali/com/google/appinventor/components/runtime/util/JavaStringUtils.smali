.class public Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$e;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$a;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;
    }
.end annotation


# static fields
.field private static final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

.field public static final LOG_TAG_JOIN_STRINGS:Ljava/lang/String; = "JavaJoinListOfStrings"

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 165
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;-><init>(B)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    .line 166
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b;-><init>(B)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    .line 167
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$a;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$a;-><init>(B)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    .line 168
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$e;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$e;-><init>(B)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 339
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 342
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 343
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 346
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 349
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 352
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 358
    new-instance v5, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;

    invoke-direct {v5, v3, v4, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;-><init>(IILjava/lang/String;)V

    .line 359
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;

    const/4 v0, 0x0

    .line 375
    iget v1, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->siVQGK7skYIQ7zI3RxZVmSEN1N3qEwDlBDPORHd716EIgwqH2EWQFUJrvV0SXYUL:I

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-object v1, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:Ljava/lang/String;

    .line 377
    iget p2, p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$d;->KYHvnTv0AWOO8SeFCXsiNXCxcIirISbo8kAOvMnivJLnqAuCVxfixET1OT3ZpHhw:I

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 378
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static joinStrings(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1201
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 1206
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1209
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 267
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 288
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {p2, v1, p0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;Ljava/lang/String;)V

    .line 302
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceAllMappingsDictionaryOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceAllMappingsEarliestOccurrenceOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 251
    sget-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceAllMappingsLongestStringOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
