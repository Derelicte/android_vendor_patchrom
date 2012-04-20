.class public final enum Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;
.super Ljava/lang/Enum;
.source "FileCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewPage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

.field public static final enum Category:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

.field public static final enum Favorite:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

.field public static final enum Home:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

.field public static final enum Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

.field public static final enum NoSD:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    new-instance v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    const-string v1, "Home"

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Home:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    const-string v1, "Favorite"

    invoke-direct {v0, v1, v3}, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Favorite:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    const-string v1, "Category"

    invoke-direct {v0, v1, v4}, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Category:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    const-string v1, "NoSD"

    invoke-direct {v0, v1, v5}, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->NoSD:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v6}, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    .line 186
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Home:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Favorite:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Category:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->NoSD:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->$VALUES:[Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;
    .locals 1
    .parameter

    .prologue
    .line 186
    const-class v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    return-object v0
.end method

.method public static values()[Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->$VALUES:[Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    return-object v0
.end method
