export interface IPost{
    id: number
    author: string | null
    content: string | null
    created_time: Date | null
    updated_time: Date | null
    author_id: number
    location: string | null
    comment_available: boolean | null
}