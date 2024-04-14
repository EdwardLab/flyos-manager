.class public Lcom/onesignal/outcomes/OSOutcomesDbContract$OutcomeEventsTable;
.super Ljava/lang/Object;
.source "OSOutcomesDbContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/outcomes/OSOutcomesDbContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutcomeEventsTable"
.end annotation


# static fields
.field static final COLUMN_NAME_IAM_IDS:Ljava/lang/String; = "iam_ids"

.field static final COLUMN_NAME_IAM_INFLUENCE_TYPE:Ljava/lang/String; = "iam_influence_type"

.field static final COLUMN_NAME_NAME:Ljava/lang/String; = "name"

.field static final COLUMN_NAME_NOTIFICATION_IDS:Ljava/lang/String; = "notification_ids"

.field static final COLUMN_NAME_NOTIFICATION_INFLUENCE_TYPE:Ljava/lang/String; = "notification_influence_type"

.field static final COLUMN_NAME_PARAMS:Ljava/lang/String; = "params"

.field static final COLUMN_NAME_SESSION:Ljava/lang/String; = "session"

.field static final COLUMN_NAME_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field static final COLUMN_NAME_WEIGHT:Ljava/lang/String; = "weight"

.field static final TABLE_NAME:Ljava/lang/String; = "outcome"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
