.class public Lcom/android/fileexplorer/ActivitiesManager;
.super Ljava/lang/Object;
.source "ActivitiesManager.java"


# static fields
.field private static instance:Lcom/android/fileexplorer/ActivitiesManager;


# instance fields
.field private activities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/ActivitiesManager;->activities:Ljava/util/HashMap;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/ActivitiesManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/fileexplorer/ActivitiesManager;->instance:Lcom/android/fileexplorer/ActivitiesManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/android/fileexplorer/ActivitiesManager;

    invoke-direct {v0}, Lcom/android/fileexplorer/ActivitiesManager;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/ActivitiesManager;->instance:Lcom/android/fileexplorer/ActivitiesManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/android/fileexplorer/ActivitiesManager;->instance:Lcom/android/fileexplorer/ActivitiesManager;

    return-object v0
.end method


# virtual methods
.method public registerActivity(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .parameter "name"
    .parameter "a"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/ActivitiesManager;->activities:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method
