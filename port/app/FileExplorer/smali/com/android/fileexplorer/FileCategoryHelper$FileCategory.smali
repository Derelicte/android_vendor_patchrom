.class public final enum Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
.super Ljava/lang/Enum;
.source "FileCategoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileCategoryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field public static final enum All:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field public static final enum Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field public static final enum Custom:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field public static final enum Doc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field public static final enum Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field public static final enum Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field public static final enum Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field public static final enum Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field public static final enum Theme:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field public static final enum Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

.field public static final enum Zip:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const-string v1, "All"

    invoke-direct {v0, v1, v3}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const-string v1, "Music"

    invoke-direct {v0, v1, v4}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const-string v1, "Video"

    invoke-direct {v0, v1, v5}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const-string v1, "Picture"

    invoke-direct {v0, v1, v6}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const-string v1, "Theme"

    invoke-direct {v0, v1, v7}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const-string v1, "Doc"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const-string v1, "Zip"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const-string v1, "Apk"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const-string v1, "Custom"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const-string v1, "Other"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    new-instance v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    const-string v1, "Favorite"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .line 35
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Custom:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->$VALUES:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    .locals 1
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    return-object v0
.end method

.method public static values()[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->$VALUES:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    return-object v0
.end method
