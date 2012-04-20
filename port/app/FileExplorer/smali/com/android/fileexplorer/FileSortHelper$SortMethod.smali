.class public final enum Lcom/android/fileexplorer/FileSortHelper$SortMethod;
.super Ljava/lang/Enum;
.source "FileSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/FileSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/fileexplorer/FileSortHelper$SortMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/FileSortHelper$SortMethod;

.field public static final enum date:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

.field public static final enum name:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

.field public static final enum size:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

.field public static final enum type:Lcom/android/fileexplorer/FileSortHelper$SortMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    const-string v1, "name"

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->name:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    new-instance v0, Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    const-string v1, "size"

    invoke-direct {v0, v1, v3}, Lcom/android/fileexplorer/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->size:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    new-instance v0, Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    const-string v1, "date"

    invoke-direct {v0, v1, v4}, Lcom/android/fileexplorer/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->date:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    new-instance v0, Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    const-string v1, "type"

    invoke-direct {v0, v1, v5}, Lcom/android/fileexplorer/FileSortHelper$SortMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->type:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    sget-object v1, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->name:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->size:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->date:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->type:Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->$VALUES:[Lcom/android/fileexplorer/FileSortHelper$SortMethod;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/FileSortHelper$SortMethod;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    return-object v0
.end method

.method public static values()[Lcom/android/fileexplorer/FileSortHelper$SortMethod;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/fileexplorer/FileSortHelper$SortMethod;->$VALUES:[Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/FileSortHelper$SortMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    return-object v0
.end method
