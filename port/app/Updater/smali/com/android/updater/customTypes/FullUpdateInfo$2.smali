.class Lcom/android/updater/customTypes/FullUpdateInfo$2;
.super Ljava/lang/Object;
.source "FullUpdateInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/customTypes/FullUpdateInfo;->getUpdateInfo()Lcom/android/updater/customTypes/UpdateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/updater/customTypes/UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/customTypes/FullUpdateInfo;


# direct methods
.method constructor <init>(Lcom/android/updater/customTypes/FullUpdateInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/updater/customTypes/FullUpdateInfo$2;->this$0:Lcom/android/updater/customTypes/FullUpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/updater/customTypes/UpdateInfo;Lcom/android/updater/customTypes/UpdateInfo;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 115
    invoke-virtual {p2}, Lcom/android/updater/customTypes/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/updater/customTypes/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/updater/utils/StringUtils;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    check-cast p1, Lcom/android/updater/customTypes/UpdateInfo;

    .end local p1
    check-cast p2, Lcom/android/updater/customTypes/UpdateInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/updater/customTypes/FullUpdateInfo$2;->compare(Lcom/android/updater/customTypes/UpdateInfo;Lcom/android/updater/customTypes/UpdateInfo;)I

    move-result v0

    return v0
.end method
