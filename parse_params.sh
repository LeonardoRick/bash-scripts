# get named arguments as: --paramname param.
while [ $# -gt 0 ]; do

   if [[ $1 == *"--"* ]]; then
      param="${1/--/}"
      if [[ "$2" ]]; then
         declare $param="$2"
      else
         declare $param="true"
      fi
         # echo $1 $2  # Optional to see the parameter:value result
   fi
  shift
done
