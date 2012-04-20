.class public Lcom/android/fileexplorer/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static mInstance:Lcom/android/fileexplorer/Settings;


# instance fields
.field private mShowDotAndHiddenFiles:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static instance()Lcom/android/fileexplorer/Settings;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/fileexplorer/Settings;->mInstance:Lcom/android/fileexplorer/Settings;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/android/fileexplorer/Settings;

    invoke-direct {v0}, Lcom/android/fileexplorer/Settings;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/Settings;->mInstance:Lcom/android/fileexplorer/Settings;

    .line 16
    :cond_0
    sget-object v0, Lcom/android/fileexplorer/Settings;->mInstance:Lcom/android/fileexplorer/Settings;

    return-object v0
.end method


# virtual methods
.method public getShowDotAndHiddenFiles()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/fileexplorer/Settings;->mShowDotAndHiddenFiles:Z

    return v0
.end method

.method public setShowDotAndHiddenFiles(Z)V
    .locals 0
    .parameter "s"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/fileexplorer/Settings;->mShowDotAndHiddenFiles:Z

    .line 25
    return-void
.end method
