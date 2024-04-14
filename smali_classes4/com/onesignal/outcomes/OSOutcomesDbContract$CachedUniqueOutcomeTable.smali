.class Lcom/onesignal/outcomes/OSOutcomesDbContract$CachedUniqueOutcomeTable;
.super Ljava/lang/Object;
.source "OSOutcomesDbContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/outcomes/OSOutcomesDbContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CachedUniqueOutcomeTable"
.end annotation


# static fields
.field static final COLUMN_CHANNEL_INFLUENCE_ID:Ljava/lang/String; = "channel_influence_id"

.field static final COLUMN_CHANNEL_TYPE:Ljava/lang/String; = "channel_type"

.field static final COLUMN_NAME_NAME:Ljava/lang/String; = "name"

.field static final COLUMN_NAME_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field static final TABLE_NAME:Ljava/lang/String; = "cached_unique_outcome"

.field static final TABLE_NAME_V1:Ljava/lang/String; = "cached_unique_outcome_notification"

.field static final TABLE_NAME_V2:Ljava/lang/String; = "cached_unique_outcome"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
