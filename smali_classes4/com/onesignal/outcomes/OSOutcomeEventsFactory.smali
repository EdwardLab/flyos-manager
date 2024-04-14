.class public Lcom/onesignal/outcomes/OSOutcomeEventsFactory;
.super Ljava/lang/Object;
.source "OSOutcomeEventsFactory.java"


# instance fields
.field private final apiClient:Lcom/onesignal/OneSignalAPIClient;

.field private final logger:Lcom/onesignal/OSLogger;

.field private final outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

.field private repository:Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;


# direct methods
.method public constructor <init>(Lcom/onesignal/OSLogger;Lcom/onesignal/OneSignalAPIClient;Lcom/onesignal/OneSignalDb;Lcom/onesignal/OSSharedPreferences;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->logger:Lcom/onesignal/OSLogger;

    .line 18
    iput-object p2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->apiClient:Lcom/onesignal/OneSignalAPIClient;

    .line 20
    new-instance p2, Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    invoke-direct {p2, p1, p3, p4}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;-><init>(Lcom/onesignal/OSLogger;Lcom/onesignal/OneSignalDb;Lcom/onesignal/OSSharedPreferences;)V

    iput-object p2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    return-void
.end method

.method private createRepository()V
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    invoke-virtual {v0}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->isOutcomesV2ServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/onesignal/outcomes/OSOutcomeEventsV2Repository;

    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->logger:Lcom/onesignal/OSLogger;

    iget-object v2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    new-instance v3, Lcom/onesignal/outcomes/OSOutcomeEventsV2Service;

    iget-object v4, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->apiClient:Lcom/onesignal/OneSignalAPIClient;

    invoke-direct {v3, v4}, Lcom/onesignal/outcomes/OSOutcomeEventsV2Service;-><init>(Lcom/onesignal/OneSignalAPIClient;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/onesignal/outcomes/OSOutcomeEventsV2Repository;-><init>(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/OSOutcomeEventsCache;Lcom/onesignal/outcomes/domain/OutcomeEventsService;)V

    iput-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->repository:Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;

    iget-object v1, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->logger:Lcom/onesignal/OSLogger;

    iget-object v2, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    new-instance v3, Lcom/onesignal/outcomes/OSOutcomeEventsV1Service;

    iget-object v4, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->apiClient:Lcom/onesignal/OneSignalAPIClient;

    invoke-direct {v3, v4}, Lcom/onesignal/outcomes/OSOutcomeEventsV1Service;-><init>(Lcom/onesignal/OneSignalAPIClient;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;-><init>(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/OSOutcomeEventsCache;Lcom/onesignal/outcomes/domain/OutcomeEventsService;)V

    iput-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->repository:Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    :goto_0
    return-void
.end method

.method private validateRepositoryVersion()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    invoke-virtual {v0}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->isOutcomesV2ServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->repository:Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    instance-of v0, v0, Lcom/onesignal/outcomes/OSOutcomeEventsV1Repository;

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->outcomeEventsCache:Lcom/onesignal/outcomes/OSOutcomeEventsCache;

    invoke-virtual {v0}, Lcom/onesignal/outcomes/OSOutcomeEventsCache;->isOutcomesV2ServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->repository:Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    instance-of v0, v0, Lcom/onesignal/outcomes/OSOutcomeEventsV2Repository;

    if-eqz v0, :cond_1

    return-void

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->createRepository()V

    return-void
.end method


# virtual methods
.method public getRepository()Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->repository:Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    if-nez v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->createRepository()V

    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->validateRepositoryVersion()V

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/onesignal/outcomes/OSOutcomeEventsFactory;->repository:Lcom/onesignal/outcomes/domain/OSOutcomeEventsRepository;

    return-object v0
.end method
