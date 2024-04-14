.class public Lcom/google/appinventor/components/runtime/EventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/EventDispatcher$b;,
        Lcom/google/appinventor/components/runtime/EventDispatcher$a;
    }
.end annotation


# static fields
.field private static final hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/appinventor/components/runtime/HandlesEventDispatching;",
            "Lcom/google/appinventor/components/runtime/EventDispatcher$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$b;
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/util/Set;Lcom/google/appinventor/components/runtime/Component;[Ljava/lang/Object;)Z
    .locals 0

    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/util/Set;Lcom/google/appinventor/components/runtime/Component;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs dispatchEvent(Landroid/view/View;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 211
    new-instance v0, Lcom/google/appinventor/components/runtime/EventDispatcher$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/EventDispatcher$1;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static varargs dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 4

    .line 193
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/OptionHelper;->optionListsFromValues(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 195
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/Component;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    .line 196
    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 197
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    move-result-object v1

    .line 6064
    iget-object v1, v1, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/HashMap;

    .line 198
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 199
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 200
    invoke-static {v0, v1, p0, p2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/util/Set;Lcom/google/appinventor/components/runtime/Component;[Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    xor-int/lit8 v1, v2, 0x1

    .line 202
    invoke-interface {v0, p0, p1, v1, p2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V

    :cond_1
    return v2
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$b;
    .locals 2

    .line 88
    sget-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/EventDispatcher$b;-><init>(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V

    .line 91
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method private static varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/util/Set;Lcom/google/appinventor/components/runtime/Component;[Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/HandlesEventDispatching;",
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/EventDispatcher$a;",
            ">;",
            "Lcom/google/appinventor/components/runtime/Component;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 243
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/EventDispatcher$a;

    .line 7024
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Ljava/lang/String;

    .line 8024
    iget-object v1, v1, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:Ljava/lang/String;

    .line 244
    invoke-interface {p0, p2, v2, v1, p3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static makeFullEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x24

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registerEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 112
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    move-result-object p0

    .line 1064
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/HashMap;

    .line 113
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2064
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/HashMap;

    .line 116
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    new-instance p0, Lcom/google/appinventor/components/runtime/EventDispatcher$a;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$a;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeDispatchDelegate(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V
    .locals 1

    .line 4097
    sget-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    if-eqz p0, :cond_0

    .line 5064
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/HashMap;

    .line 178
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public static unregisterAllEventsForDelegation()V
    .locals 2

    .line 163
    sget-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    .line 4064
    iget-object v1, v1, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/HashMap;

    .line 164
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static unregisterEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 137
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    move-result-object p0

    .line 3064
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/HashMap;

    .line 138
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_3

    .line 139
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    .line 142
    :cond_0
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 143
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/EventDispatcher$a;

    .line 4024
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Ljava/lang/String;

    .line 144
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/EventDispatcher$a;

    .line 153
    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
